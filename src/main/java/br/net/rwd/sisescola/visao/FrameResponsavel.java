package br.net.rwd.sisescola.visao;

import java.awt.Color;
import java.awt.Component;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFormattedTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.ScrollPaneConstants;
import javax.swing.UIManager;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumnModel;
import javax.swing.table.TableModel;
import javax.swing.text.MaskFormatter;

import br.net.rwd.sisescola.ApplicationContextProvider;
import br.net.rwd.sisescola.entidade.Responsavel;
import br.net.rwd.sisescola.enumerado.Estado;
import br.net.rwd.sisescola.enumerado.Nacionalidade;
import br.net.rwd.sisescola.enumerado.Profissao;
import br.net.rwd.sisescola.servico.ResponsavelServico;
import br.net.rwd.sisescola.util.ControlesSwing;
import br.net.rwd.sisescola.util.JTextFieldLimit;
import br.net.rwd.sisescola.util.Uteis;

public class FrameResponsavel extends javax.swing.JInternalFrame {

	private static final long serialVersionUID = 1L;
	
    private ResponsavelServico model = (ResponsavelServico) (ApplicationContextProvider.getInstance()).getApplicationContext().getBean("responsavelServico");
	private List<Responsavel> lista;
	private Responsavel responsavel;
	private int linhaSelecionada;
	private int posicao;
	private String responsavelAnterior;
	private JTable tabelaResponsaveis;
	private JScrollPane scrollTab;
	private JScrollPane scrollObs;
	private JTextField textPesquisa;
	private JComboBox cmbPesquisa;
	private JTextArea aTextObs;
	private JButton btnNovo;
	private JButton btnSalvar;
	private JButton btnAlterar;
	private JButton btnExcluir;
	private JButton btnAnular;
	private JButton btnPrimeiro;
	private JButton btnAnterior;
	private JButton btnProximo;
	private JButton btnUltimo;
	private JTabbedPane tPaneResponsavel;
	private JPanel panel_responsavel;
	private JTextField textNomeResp;
	private JLabel lblNomeResp;
	private JLabel lblCpfResp;
	private JLabel lblRgResp;
	private JTextField textRgResp;
	private JLabel lblNacionalidadeResp;
	private JLabel lblNaturalidadeResp;
	private JTextField textNatResp;
	private JLabel lblNascimentoResp;
	private JFormattedTextField fTextNascResp;
	private JLabel lblTelResp;
	private JLabel lblCelResp;
	private JLabel lblProfissaoResp;
	private JLabel lblLocTrabResp;
	private JTextField textLocTrabResp;
	private JLabel lblTelTrabResp;
	private JLabel lblEnderecoResp;
	private JTextField textEndResp;
	private JLabel lblBairroResp;
	private JTextField textBairroResp;
	private JLabel lblCepResp;
	private JLabel lblCidadeResp;
	private JTextField textCidadeResp;
	private JLabel lblEstadoResp;
	private JComboBox cmbUfResp;
	private JLabel lblRendaResp;
	private JFormattedTextField fTextRendaResp;
	private JComboBox cmbNacResp;
	private JComboBox cmbProfResp;
	private JFormattedTextField fTextTelResp;
	private JFormattedTextField fTextCelResp;
	private JFormattedTextField fTextTelTrabResp;
	private JFormattedTextField fTextCpfResp;
	private JFormattedTextField fTextCepResp;

	public FrameResponsavel() {
		super();
		initGUI();
		carregaTabela(model.listarTodos());
        ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao);
	}
	
	private void initGUI() {
		try {
			getContentPane().setLayout(null);
			setSize(780, 540);
			setClosable(true);
			setTitle("Cliente - Responsável Financeiro");
			
			Component content = FramePrincipal.getInstanciaPrincipal().getContentPane();  
			int x = (content.getWidth() - getWidth()) / 2;  
			int y = (content.getHeight() - getHeight()) / 2;
			setLocation(x, y);
			
			JPanel panel_pesquisa = new JPanel();
			panel_pesquisa.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "Pesquisa por", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
			panel_pesquisa.setBounds(10, 11, 744, 65);
			getContentPane().add(panel_pesquisa);
			panel_pesquisa.setLayout(null);
			
			textPesquisa = new JTextField();
			textPesquisa.setBounds(153, 25, 482, 20);
			textPesquisa.setDocument(new JTextFieldLimit(50, true));
			panel_pesquisa.add(textPesquisa);
			textPesquisa.setColumns(10);
			
			JButton btnLocalizarAlun = new JButton("Localizar");
			btnLocalizarAlun.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {

					if (cmbPesquisa.getSelectedIndex() == 0)
						carregaTabela(model.listarPorNome(textPesquisa.getText()));

					if (cmbPesquisa.getSelectedIndex() == 1)
						if (Uteis.retornaNumeros(textPesquisa.getText().trim()).length() != 11 || Uteis.retornaNumeros(textPesquisa.getText().trim()) == null) {
							JOptionPane.showMessageDialog(null, "Informe o número do CPF corretamente!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
							textPesquisa.requestFocusInWindow();
							return;
						} else
							carregaTabela(model.listarPorCpf(textPesquisa.getText()));

					if (lista.isEmpty()) {
						JOptionPane.showMessageDialog(null, "O item pesquisado não foi localizado!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						carregaTabela(model.listarPorNome(""));
					}

				}
			});
			btnLocalizarAlun.setBounds(645, 24, 89, 23);
			panel_pesquisa.add(btnLocalizarAlun);
			
			cmbPesquisa = new JComboBox();
			cmbPesquisa.setModel(new DefaultComboBoxModel(new String[] {"Nome", "CPF"}));
			cmbPesquisa.setBounds(10, 25, 135, 20);
			panel_pesquisa.add(cmbPesquisa);

			JPanel panel_controles = new JPanel();
			panel_controles.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
			panel_controles.setBounds(10, 455, 744, 45);
			getContentPane().add(panel_controles);
			panel_controles.setLayout(null);
			
			btnNovo = new JButton("Novo");
			btnNovo.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					
					int estadoPesquisa = cmbPesquisa.getSelectedIndex();
					
					responsavel = new Responsavel();
					Uteis.limpaCampos(getContentPane());
					ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao,"N");
					cmbPesquisa.setSelectedIndex(estadoPesquisa);
				}
			});
			btnNovo.setBounds(10, 11, 65, 23);
			panel_controles.add(btnNovo);
			
			btnSalvar = new JButton("Salvar");
			btnSalvar.addActionListener(new ActionListener() {
				
				public void actionPerformed(ActionEvent arg0) {
					
					if (responsavel == null) {
						JOptionPane.showMessageDialog(null, "Sem alterações", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						return;
					}
	
					/* ------------------------------------ VALIDAÇÃO DE CAMPOS ------------------------------------ */

					if(textNomeResp.getText().trim().length() == 0) {
						JOptionPane.showMessageDialog(null, "Informe o campo: Nome", "Aviso", JOptionPane.WARNING_MESSAGE, null);
						textNomeResp.requestFocusInWindow();
						return;
					}
					/*
					if(cmbSexoAlun.getModel().getSelectedItem() == null) {
						JOptionPane.showMessageDialog(null, "Informe o campo: Sexo", "Aviso", JOptionPane.WARNING_MESSAGE, null);
						cmbSexoAlun.requestFocusInWindow();
						return;
					}
					if(fTextNascAlun.getText().toString().trim().length() < 10) {
						JOptionPane.showMessageDialog(null, "Informe o campo: Nascimento", "Aviso", JOptionPane.WARNING_MESSAGE, null);
						fTextNascAlun.requestFocusInWindow();
						return;
					}
					if(cmbNacAlun.getModel().getSelectedItem() == null) {
						JOptionPane.showMessageDialog(null, "Informe o campo: Nacionalidade", "Aviso", JOptionPane.WARNING_MESSAGE, null);
						cmbNacAlun.requestFocusInWindow();
						return;
					}
					if(textNatAlun.getText().trim().length() == -1) {
						JOptionPane.showMessageDialog(null, "Informe o campo: Naturalidade", "Aviso", JOptionPane.WARNING_MESSAGE, null);
						textNatAlun.requestFocusInWindow();
						return;
					}
					*/
					/* ------------------------------------ VALIDAÇÃO DE CAMPOS ------------------------------------ */

					responsavel.setRespNome(textNomeResp.getText().toUpperCase());
					try {
						responsavel.setRespDn(fTextNascResp.getText().length() < 10 ? null : new java.sql.Date(((Date)new SimpleDateFormat("dd/MM/yyyy").parse(fTextNascResp.getText())).getTime()));
					} catch (ParseException e1) {
						e1.printStackTrace();
					}
					responsavel.setRespNacionalidade(cmbNacResp.getSelectedItem() == null ? null : cmbNacResp.getSelectedItem().toString());
					responsavel.setRespNaturalidade(textNatResp.getText().toUpperCase());
					responsavel.setRespRg(textRgResp.getText().toString());
					responsavel.setRespCpf(fTextCpfResp.getText().length() < 14 ? null : fTextCpfResp.getText());
					responsavel.setRespTel1(fTextTelResp.getText().length() < 13 ? null : fTextTelResp.getText());
					responsavel.setRespTel2(fTextCelResp.getText().length() < 13 ? null : fTextCelResp.getText());
					responsavel.setRespTel3(fTextTelTrabResp.getText().length() < 13 ? null : fTextTelTrabResp.getText());
					responsavel.setRespLocaltrabalho(textLocTrabResp.getText().toUpperCase());
					responsavel.setRespProfissao(cmbProfResp.getSelectedItem() == null ? null : cmbProfResp.getSelectedItem().toString());
					responsavel.setRespRenda(Float.parseFloat(fTextRendaResp.getValue() == null ? "0.00" : fTextRendaResp.getValue().toString().replace(",", ".")));
					responsavel.setRespEndereco(textEndResp.getText().toUpperCase());
					responsavel.setRespBairro(textBairroResp.getText().toUpperCase());
					responsavel.setRespCidade(textCidadeResp.getText().toUpperCase());
					responsavel.setRespCep(fTextCepResp.getValue() == null ? null : fTextCepResp.getValue().toString());
					responsavel.setRespUf(cmbUfResp.getSelectedItem() == null ? null : cmbUfResp.getSelectedItem().toString());
					//responsavel.setRespObservacoes(aTextObsAlun.getText());
		
					/* ------------------------ INICIO DO CADASTRO ------------------------ */
					if (lista.get(0).getRespCod() == null || lista.get(0).getRespCod().intValue() == 0) {
						/* --------------------------- INSERIR ---------------------------- */	
						if (model.selecionarResponsavelExistente(lista.get(0).getRespCpf())) {
							JOptionPane.showMessageDialog(null, "Responsável financeiro cadastrado!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
							return;
						}
						responsavel = model.incluir(responsavel);
						/* ---------------------------------------------------------------- */
					} else {
						/* -------------------------- ATUALIZAR --------------------------- */
						if (!textNomeResp.getText().equalsIgnoreCase(responsavelAnterior)) 
							if (model.selecionarResponsavelExistente(lista.get(0).getRespCpf())) {
								JOptionPane.showMessageDialog(null, "Responsável financeiro cadastrado!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
								return;
							}

						model.alterar(responsavel);
						/* ---------------------------------------------------------------- */
					}
					/* ------------------------ FINAL DO CADASTRO ------------------------ */
					carregaTabela(model.listarTodos());
					responsavelAnterior = null;
					ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao,"S");
				}
			});
			btnSalvar.setBounds(78, 11, 65, 23);
			panel_controles.add(btnSalvar);
			
			btnAlterar = new JButton("Alterar");
			btnAlterar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					/* --------------------------- ALTERAR --------------------------- */
						preencheCampos(linhaSelecionada);
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao,"A");
					/* --------------------------------------------------------------- */
				}
			});
			btnAlterar.setBounds(146, 11, 65, 23);
			panel_controles.add(btnAlterar);
			
			btnExcluir = new JButton("Excluir");
			btnExcluir.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					/* --------------------------- EXCLUIR --------------------------- */
					int i = linhaSelecionada;
					int retorno = JOptionPane.showConfirmDialog(null, "Tem certeza que deseja excluir?", "Exclusão", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null);
					if (i > -1 && retorno == 0) {
						model.excluir(model.selecionarPorTipo(Integer.parseInt((String) tabelaResponsaveis.getModel().getValueAt(i, 0))));
						carregaTabela(model.listarTodos());
					}
					ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao,"E");
					/* --------------------------------------------------------------- */
				}
			});
			btnExcluir.setBounds(214, 11, 65, 23);
			panel_controles.add(btnExcluir);
			
			btnAnular = new JButton("Anular");
			btnAnular.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					responsavel = null;
					if(!lista.isEmpty()) {
						posicao = linhaSelecionada = 0;
						preencheCampos(posicao);
					}
					ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao,"C");
				}
			});
			btnAnular.setBounds(282, 11, 65, 23);
			panel_controles.add(btnAnular);
			
			btnPrimeiro = new JButton("|<");
			btnPrimeiro.setToolTipText("Primeiro");
			btnPrimeiro.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					
					if(!lista.isEmpty()) {
						posicao = linhaSelecionada = 0;
						preencheCampos(posicao);
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao);
					}
				}
			});
			btnPrimeiro.setBounds(372, 11, 49, 23);
			panel_controles.add(btnPrimeiro);
			
			btnAnterior = new JButton("<<");
			btnAnterior.setToolTipText("Anterior");
			btnAnterior.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					if(!lista.isEmpty() && linhaSelecionada > 0) {
						posicao = --linhaSelecionada;
						preencheCampos(posicao);
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao);
					}
				}
			});
			btnAnterior.setBounds(425, 11, 49, 23);
			panel_controles.add(btnAnterior);
			
			btnProximo = new JButton(">>");
			btnProximo.setToolTipText("Próximo");
			btnProximo.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					if(!lista.isEmpty() && linhaSelecionada < (lista.size()) - 1) {
						posicao = ++linhaSelecionada;
						preencheCampos(posicao);
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao);
					}
				}
			});
			btnProximo.setBounds(478, 11, 49, 23);
			panel_controles.add(btnProximo);
			
			btnUltimo = new JButton(">|");
			btnUltimo.setToolTipText("Último");
			btnUltimo.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					if(!lista.isEmpty()) {
						posicao = linhaSelecionada = lista.size()-1;
						preencheCampos(posicao);
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo,lista,posicao);
					}
				}
			});
			btnUltimo.setBounds(531, 11, 49, 23);
			panel_controles.add(btnUltimo);
			
			JButton btnFechar = new JButton("Fechar");
			btnFechar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					dispose();
				}
			});
			btnFechar.setBounds(664, 11, 70, 23);
			panel_controles.add(btnFechar);
			
			JButton btnImprimir = new JButton("Imprimir");
			btnImprimir.setBounds(591, 11, 70, 23);
			panel_controles.add(btnImprimir);

			tPaneResponsavel = new JTabbedPane(JTabbedPane.TOP);
			tPaneResponsavel.setBounds(10, 86, 744, 348);
			getContentPane().add(tPaneResponsavel);
			
			/* ------------------------------------------------------------------------------ */
			//							DADOS DO RESPONSAVEL FINANCEIRO
			/* ------------------------------------------------------------------------------ */
			
			panel_responsavel = new JPanel();
			panel_responsavel.setLayout(null);
			tPaneResponsavel.addTab("Dados do Responsável Financeiro", null, panel_responsavel, null);

			lblNomeResp = new JLabel("Nome");
			lblNomeResp.setBounds(10, 14, 100, 14);
			panel_responsavel.add(lblNomeResp);
			
			lblEnderecoResp = new JLabel("Endereço");
			lblEnderecoResp.setBounds(10, 45, 100, 14);
			panel_responsavel.add(lblEnderecoResp);
			
			lblBairroResp = new JLabel("Bairro");
			lblBairroResp.setBounds(518, 45, 36, 14);
			panel_responsavel.add(lblBairroResp);
			
			lblCepResp = new JLabel("CEP");
			lblCepResp.setBounds(10, 76, 100, 14);
			panel_responsavel.add(lblCepResp);
			
			lblCidadeResp = new JLabel("Cidade");
			lblCidadeResp.setBounds(217, 76, 36, 14);
			panel_responsavel.add(lblCidadeResp);

			lblEstadoResp = new JLabel("Estado");
			lblEstadoResp.setBounds(483, 76, 37, 14);
			panel_responsavel.add(lblEstadoResp);
			
			lblRendaResp = new JLabel("Renda");
			lblRendaResp.setBounds(10, 107, 100, 14);
			panel_responsavel.add(lblRendaResp);
			
			lblCpfResp = new JLabel("CPF");
			lblCpfResp.setBounds(217, 107, 27, 14);
			panel_responsavel.add(lblCpfResp);
			
			lblRgResp = new JLabel("RG");
			lblRgResp.setBounds(388, 107, 22, 14);
			panel_responsavel.add(lblRgResp);
			
			lblNascimentoResp = new JLabel("Data Nascimento");
			lblNascimentoResp.setBounds(561, 107, 85, 14);
			panel_responsavel.add(lblNascimentoResp);
			
			lblNaturalidadeResp = new JLabel("Naturalidade");
			lblNaturalidadeResp.setBounds(10, 138, 100, 14);
			panel_responsavel.add(lblNaturalidadeResp);

			lblNacionalidadeResp = new JLabel("Nacionalidade");
			lblNacionalidadeResp.setBounds(390, 138, 72, 14);
			panel_responsavel.add(lblNacionalidadeResp);
			
			lblProfissaoResp = new JLabel("Profissão");
			lblProfissaoResp.setBounds(10, 171, 100, 14);
			panel_responsavel.add(lblProfissaoResp);

			lblTelResp = new JLabel("Tel. Fixo");
			lblTelResp.setBounds(416, 171, 46, 14);
			panel_responsavel.add(lblTelResp);
			
			lblCelResp = new JLabel("Tel. Celular");
			lblCelResp.setBounds(571, 171, 59, 14);
			panel_responsavel.add(lblCelResp);

			lblLocTrabResp = new JLabel("Local Trabalho");
			lblLocTrabResp.setBounds(10, 203, 100, 14);
			panel_responsavel.add(lblLocTrabResp);
			
			lblTelTrabResp = new JLabel("Tel. do Trabalho");
			lblTelTrabResp.setBounds(550, 203, 80, 14);
			panel_responsavel.add(lblTelTrabResp);

			textNomeResp = new JTextField();
			textNomeResp.setBounds(124, 11, 605, 20);
			textNomeResp.setDocument(new JTextFieldLimit(50, true));
			panel_responsavel.add(textNomeResp);
			
			textEndResp = new JTextField();
			textEndResp.setBounds(124, 42, 384, 20);
			textEndResp.setDocument(new JTextFieldLimit(50, true));
			panel_responsavel.add(textEndResp);
			
			textBairroResp = new JTextField();
			textBairroResp.setBounds(561, 42, 168, 20);
			textBairroResp.setDocument(new JTextFieldLimit(30, true));
			panel_responsavel.add(textBairroResp);
			
			fTextCepResp = new JFormattedTextField(new MaskFormatter("#####-###"));
			fTextCepResp.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextCepResp.getText().equals("     -   ")) { 
						fTextCepResp.setValue(null);
					}
				}
			});
			fTextCepResp.setBounds(124, 73, 72, 20);
			panel_responsavel.add(fTextCepResp);
			
			textCidadeResp = new JTextField();
			textCidadeResp.setBounds(259, 73, 196, 20);
			textCidadeResp.setDocument(new JTextFieldLimit(25, true));
			panel_responsavel.add(textCidadeResp);
			
			cmbUfResp = new JComboBox();
			cmbUfResp.setModel(new DefaultComboBoxModel(Estado.values()));
			cmbUfResp.setBounds(529, 73, 200, 20);
			panel_responsavel.add(cmbUfResp);
			
			fTextRendaResp = new JFormattedTextField();
			fTextRendaResp.setBounds(124, 104, 71, 20);
			panel_responsavel.add(fTextRendaResp);
			
			fTextCpfResp = new JFormattedTextField(new MaskFormatter("###.###.###-##"));
			fTextCpfResp.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextCpfResp.getText().equals("   .   .   -  ")) { 
						fTextCpfResp.setValue(null);
					}
				}
			});
			fTextCpfResp.setBounds(243, 104, 125, 20);
			panel_responsavel.add(fTextCpfResp);
			
			textRgResp = new JTextField();
			textRgResp.setBounds(416, 104, 104, 20);
			textRgResp.setDocument(new JTextFieldLimit(25, true));
			panel_responsavel.add(textRgResp);
			
			fTextNascResp = new JFormattedTextField(new MaskFormatter("##/##/####"));
			fTextNascResp.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextNascResp.getText().equals("  /  /    ")) { 
						fTextNascResp.setValue(null);
					}
				}
			});
			fTextNascResp.setBounds(647, 104, 82, 20);
			panel_responsavel.add(fTextNascResp);
			
			textNatResp = new JTextField();
			textNatResp.setBounds(123, 135, 229, 20);
			textNatResp.setDocument(new JTextFieldLimit(25, true));
			panel_responsavel.add(textNatResp);
			
			cmbNacResp = new JComboBox();
			cmbNacResp.setModel(new DefaultComboBoxModel(Nacionalidade.values()));
			cmbNacResp.setBounds(472, 135, 257, 20);
			panel_responsavel.add(cmbNacResp);

			cmbProfResp = new JComboBox();
			cmbProfResp.setModel(new DefaultComboBoxModel(Profissao.values()));
			cmbProfResp.setBounds(124, 168, 276, 20);
			panel_responsavel.add(cmbProfResp);

			fTextTelResp = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextTelResp.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextTelResp.getText().equals("(  )    -    ")) {
						fTextTelResp.setValue(null);
					}
				}
			});
			fTextTelResp.setBounds(465, 168, 89, 20);
			panel_responsavel.add(fTextTelResp);
			
			fTextCelResp = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextCelResp.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextCelResp.getText().equals("(  )    -    ")) {
						fTextCelResp.setValue(null);
					}
				}
			});
			fTextCelResp.setBounds(640, 168, 89, 20);
			panel_responsavel.add(fTextCelResp);
			
			textLocTrabResp = new JTextField();
			textLocTrabResp.setBounds(124, 200, 415, 20);
			textLocTrabResp.setDocument(new JTextFieldLimit(30, true));
			panel_responsavel.add(textLocTrabResp);
			
			fTextTelTrabResp = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextTelTrabResp.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextTelTrabResp.getText().equals("(  )    -    ")) {
						fTextTelTrabResp.setValue(null);
					}
				}
			});
			fTextTelTrabResp.setBounds(640, 200, 89, 20);
			panel_responsavel.add(fTextTelTrabResp);

			/* ------------------------------------------------------------------------------ */
			//									OBSERVACOES
			/* ------------------------------------------------------------------------------ */
			
			JPanel panel_observacoes = new JPanel();
			tPaneResponsavel.addTab("Observações", null, panel_observacoes, null);
			panel_observacoes.setLayout(null);
			
			aTextObs = new JTextArea();
			aTextObs.setLineWrap(true);
			aTextObs.setBounds(10, 11, 719, 299);
			panel_observacoes.add(aTextObs);
			
			scrollObs = new JScrollPane(aTextObs);
			scrollObs.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
			panel_observacoes.add(scrollObs);
			scrollObs.setBounds(10, 11, 719, 299);
			
			/* ------------------------------------------------------------------------------ */
			//									LISTA CLIENTES
			/* ------------------------------------------------------------------------------ */
			
			JPanel panel_lista = new JPanel();
			tPaneResponsavel.addTab("Clientes Cadastrados", null, panel_lista, null);
			panel_lista.setLayout(null);
			
			TableModel tabelaModel = new DefaultTableModel(new String[][] { {} }, new String[] { "Código", "Nome" }) {
				
				private static final long serialVersionUID = 1L;
				@Override
				public boolean isCellEditable(int row, int column) {
					return false;
				}
				
			};
			
			tabelaResponsaveis = new JTable();
			tabelaResponsaveis.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
			tabelaResponsaveis.addMouseListener(new MouseAdapter() {
				@Override
				public void mouseClicked(MouseEvent evt) {
					tabelaMouseClicked(evt);
				}
			});
			tabelaResponsaveis.setModel(tabelaModel);
			tabelaResponsaveis.setBounds(10, 25, 684, 119);
			panel_lista.add(tabelaResponsaveis);
			
			scrollTab = new JScrollPane(tabelaResponsaveis);
			panel_lista.add(scrollTab);
			scrollTab.setBounds(10, 11, 719, 299);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void carregaTabela(List<Responsavel> responsavels) {
		TableColumnModel tcmOculta = tabelaResponsaveis.getColumnModel();
		tcmOculta.getColumn(0).setMinWidth(0);
		tcmOculta.getColumn(0).setPreferredWidth(0);
		tcmOculta.getColumn(0).setMaxWidth(0);

		TableColumnModel tcm = tabelaResponsaveis.getColumnModel();
		tcm.getColumn(0);
		tcm.getColumn(1);

		DefaultTableModel dfm = (DefaultTableModel) tabelaResponsaveis.getModel();
		dfm.setNumRows(0);

	    lista = responsavels;
		Collections.sort(lista);

		for (int i = 0; i < lista.size(); i++) {
			dfm.addRow(new String[] { 
					lista.get(i).getRespCod().toString(),
					lista.get(i).getRespNome()
			});
		}

		if (!lista.isEmpty() && lista.listIterator().nextIndex() == 0) {
			linhaSelecionada = lista.listIterator().nextIndex();

			textNomeResp.setText(lista.get(0).getRespNome());
			fTextNascResp.setText(lista.get(0).getRespDn() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(lista.get(0).getRespDn())));
			cmbNacResp.getModel().setSelectedItem(lista.get(0).getRespNacionalidade());
			textNatResp.setText(lista.get(0).getRespNaturalidade());
			textRgResp.setText(lista.get(0).getRespRg());
			fTextCpfResp.setText(Uteis.retornaNumeros(lista.get(0).getRespCpf()));
			fTextTelResp.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getRespTel1())));
			fTextCelResp.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getRespTel2())));
			fTextTelTrabResp.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getRespTel3())));
			textLocTrabResp.setText(lista.get(0).getRespLocaltrabalho());
			cmbProfResp.getModel().setSelectedItem(lista.get(0).getRespProfissao());
			fTextRendaResp.setText(lista.get(0).getRespRenda() == null ? "0,00" : String.format("%.2f", lista.get(0).getRespRenda()).replace(".", ","));
			textEndResp.setText(lista.get(0).getRespEndereco());
			textBairroResp.setText(lista.get(0).getRespBairro());
			textCidadeResp.setText(lista.get(0).getRespCidade());
			fTextCepResp.setText(Uteis.retornaNumeros(lista.get(0).getRespCep()));
			cmbUfResp.getModel().setSelectedItem(lista.get(0).getRespUf());
		}
	}
	
	private void tabelaMouseClicked(MouseEvent evt) {
		linhaSelecionada = tabelaResponsaveis.getSelectedRow();
		if (!lista.isEmpty()) {
			preencheCampos(linhaSelecionada);
			//duplo clique
			if (evt.getClickCount() == 2)  
	        {  
				tPaneResponsavel.setSelectedIndex(0); 
	        }  
		}
	}
	
	private void preencheCampos(Integer posicao) {
		responsavel = lista.get(posicao);
		responsavelAnterior = responsavel.getRespNome();

		if (responsavel != null) {
			textNomeResp.setText(responsavel.getRespNome());
			fTextNascResp.setText(responsavel.getRespDn() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(responsavel.getRespDn())));
			cmbNacResp.getModel().setSelectedItem(responsavel.getRespNacionalidade());
			textNatResp.setText(responsavel.getRespNaturalidade());
			textRgResp.setText(responsavel.getRespRg());
			fTextCpfResp.setText(Uteis.retornaNumeros(responsavel.getRespCpf()));
			fTextTelResp.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(responsavel.getRespTel1())));
			fTextCelResp.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(responsavel.getRespTel2())));
			fTextTelTrabResp.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(responsavel.getRespTel3())));
			textLocTrabResp.setText(responsavel.getRespLocaltrabalho());
			cmbProfResp.getModel().setSelectedItem(responsavel.getRespProfissao());
			fTextRendaResp.setText(responsavel.getRespRenda() == null ? "0,00" : String.format("%.2f", responsavel.getRespRenda()).replace(".", ","));
			textEndResp.setText(responsavel.getRespEndereco());
			textBairroResp.setText(responsavel.getRespBairro());
			textCidadeResp.setText(responsavel.getRespCidade());
			fTextCepResp.setText(Uteis.retornaNumeros(responsavel.getRespCep()));
			cmbUfResp.getModel().setSelectedItem(responsavel.getRespUf());
		}
	}

}
