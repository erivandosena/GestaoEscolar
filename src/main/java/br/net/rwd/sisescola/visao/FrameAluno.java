package br.net.rwd.sisescola.visao;

import java.awt.Color;
import java.awt.Component;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFormattedTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.ScrollPaneConstants;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.border.TitledBorder;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumnModel;
import javax.swing.table.TableModel;
import javax.swing.text.MaskFormatter;

import br.net.rwd.sisescola.ApplicationContextProvider;
import br.net.rwd.sisescola.entidade.Aluno;
import br.net.rwd.sisescola.entidade.Responsavel;
import br.net.rwd.sisescola.enumerado.Afirmacao;
import br.net.rwd.sisescola.enumerado.Certidao;
import br.net.rwd.sisescola.enumerado.Estado;
import br.net.rwd.sisescola.enumerado.Nacionalidade;
import br.net.rwd.sisescola.enumerado.Profissao;
import br.net.rwd.sisescola.enumerado.Raca;
import br.net.rwd.sisescola.enumerado.Religiao;
import br.net.rwd.sisescola.enumerado.Sexo;
import br.net.rwd.sisescola.enumerado.Situacao;
import br.net.rwd.sisescola.servico.AlunoServico;
import br.net.rwd.sisescola.util.ControlesSwing;
import br.net.rwd.sisescola.util.JTextFieldLimit;
import br.net.rwd.sisescola.util.Uteis;

public class FrameAluno extends javax.swing.JInternalFrame {

	private static final long serialVersionUID = 1L;
	
    private AlunoServico model = (AlunoServico) (ApplicationContextProvider.getInstance()).getApplicationContext().getBean("alunoServico");
	private List<Aluno> lista;
	public Aluno aluno;
	private Responsavel responsavel;
	private int linhaSelecionada;
	private int posicao;
	private String alunoAnterior;
	private String senhaAnterior;
	private JTextField textNomeAlun;
	private JTextField textEndAlun;
	private JTable tabelaAlunos;
	private JScrollPane scrollTab;
	private JScrollPane scrollObs;
	private JTextField textPesquisaAlun;
	private JTextField textNatAlun;
	private JTextField textCidadeAlun;
	private JTextField textBairroAlun;
	private JTextField textEndCompAlun;
	private JPasswordField pTextSenhaAlun;
	private JTextField textProbSaudeAlun;
	private JTextField textMedUtilAlun;
	private JTextField textMedProibAlun;
	private JLabel lblProibidos;
	private JTextField textRgAlun;
	private JTextField textOrgEmisAlun;
	private JTextField textDocEstrangeiroAlun;
	private JTextField textTermoDocAlun;
	private JTextField textFolhaDocAlun;
	private JTextField textLivroDocAlun;
	private JTextField textCartDocAlun;
	private JTextField textNomePai;
	private JTextField textNisAlun;
	private JTextField textRgPai;
	private JTextField textNatPai;
	private JTextField textLocTrabPai;
	private JTextField textEndPai;
	private JTextField textBairroPai;
	private JTextField textCidadePai;
	private JTextField textEmailAlun;
	private JComboBox cmbSituacaoAlun;
	private JComboBox cmbSexoAlun;
	private JComboBox cmbCorRaca;
	private JComboBox cmbPesquisa;
	private JComboBox cmbEstadoAlun;
	private JComboBox cmbNacAlun;
	private JComboBox cmbRelAlun;
	private JComboBox cmbEspecialAlun;
	private JComboBox cmbRgEmisUfAlun;
	private JComboBox cmbEstadoCartDocAlun;
	private JComboBox cmbCertCivilAlun;
	private JComboBox cmbUfPai;
	private JComboBox cmbNacPai;
	private JComboBox cmbProfPai;
	private JComboBox cmbEstadoMae;
	private JComboBox cmbNacMae;
	private JComboBox cmbProfMae;
	private JFormattedTextField fTextNascAlun;
	private JFormattedTextField fTextRgDtEmisAlun;
	private JFormattedTextField fTextDtEmisDocAlun;
	private JFormattedTextField fTextNascPai;
	private JFormattedTextField fTextRendaPai;
	private JFormattedTextField fTextTelPai;
	private JFormattedTextField fTextCelPai;
	private JFormattedTextField fTextTelTrabPai;
	private JFormattedTextField fTextTelResidAlun;
	private JFormattedTextField fTextTelCelAlun;
	private JFormattedTextField fTextCpfAlun;
	private JFormattedTextField fTextCpfPai;
	private JFormattedTextField fTextCepPai;
	private JFormattedTextField fTextCepMae;
	private JFormattedTextField fTextNascMae;
	private JFormattedTextField fTextRendaMae;
	private JFormattedTextField fTextTelMae;
	private JFormattedTextField fTextCelMae;
	private JFormattedTextField fTextTelTrabMae;
	private JFormattedTextField fTextCpfMae;
	private JFormattedTextField fTextCepAlun;
	private JTextField textNomeMae;
	private JTextField textRgMae;
	private JTextField textNatMae;
	private JTextField textLocTrabMae;
	private JTextField textEndMae;
	private JTextField textBairroMae;
	private JTextField textCidadeMae;
	private JTextArea aTextObs;
	private JButton btnCarregar;
	private JButton btnNovo;
	private JButton btnSalvar;
	private JButton btnAlterar;
	private JButton btnExcluir;
	private JButton btnAnular;
	private JButton btnPrimeiro;
	private JButton btnAnterior;
	private JButton btnProximo;
	private JButton btnUltimo;
	private JFileChooser dialogoFoto;
	public JLabel lblFoto;
	private JTabbedPane tPaneAluno;
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

	public FrameAluno() {
		super();
		initGUI();
		carregaTabela(model.listarTodos());
		ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao);
	}
	
	private void initGUI() {
		try {
			getContentPane().setLayout(null);
			setSize(780, 540);
			setClosable(true);
			setTitle("Aluno");
			
			Component content = FramePrincipal.getInstanciaPrincipal().getContentPane();  
			int x = (content.getWidth() - getWidth()) / 2;  
			int y = (content.getHeight() - getHeight()) / 2;
			setLocation(x, y);
			
			JPanel panel_pesquisa = new JPanel();
			panel_pesquisa.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "Pesquisa por", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
			panel_pesquisa.setBounds(10, 11, 744, 65);
			getContentPane().add(panel_pesquisa);
			panel_pesquisa.setLayout(null);
			
			textPesquisaAlun = new JTextField();
			textPesquisaAlun.setBounds(153, 25, 482, 20);
			textPesquisaAlun.setDocument(new JTextFieldLimit(50, true));
			panel_pesquisa.add(textPesquisaAlun);
			textPesquisaAlun.setColumns(10);
			
			JButton btnLocalizarAlun = new JButton("Localizar");
			btnLocalizarAlun.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {

					if (cmbPesquisa.getSelectedIndex() == 0)
						carregaTabela(model.listarPorAluno(textPesquisaAlun.getText()));
					
					if (cmbPesquisa.getSelectedIndex() == 1)
						carregaTabela(model.listarPorMae(textPesquisaAlun.getText()));
					
					if (cmbPesquisa.getSelectedIndex() == 2)
						carregaTabela(model.listarPorPai(textPesquisaAlun.getText()));
					
					if (cmbPesquisa.getSelectedIndex() == 3)
						carregaTabela(model.listarPorResponsavel(textPesquisaAlun.getText()));
					
					if (cmbPesquisa.getSelectedIndex() == 4)
						if (Uteis.retornaNumeros(textPesquisaAlun.getText().trim()).length() != 11 || Uteis.retornaNumeros(textPesquisaAlun.getText().trim()) == null) {
							JOptionPane.showMessageDialog(null,"Informe o número do CPF corretamente!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
							textPesquisaAlun.requestFocusInWindow();
							return;
						} else
							carregaTabela(model.listarPorCpfResponsavel(textPesquisaAlun.getText()));
						
					if (lista.isEmpty()) {
					JOptionPane.showMessageDialog(null, "O item pesquisado não foi localizado!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
					carregaTabela(model.listarPorAluno(""));
					}
					
				}
			});
			btnLocalizarAlun.setBounds(645, 24, 89, 23);
			panel_pesquisa.add(btnLocalizarAlun);
			
			cmbPesquisa = new JComboBox();
			cmbPesquisa.setModel(new DefaultComboBoxModel(new String[] {"Nome do Aluno", "Nome da Mãe", "Nome do Pai", "Nome do Responsável", "CPF do Responsável"}));
			cmbPesquisa.setBounds(10, 25, 135, 20);
			panel_pesquisa.add(cmbPesquisa);

			JPanel panel_controles = new JPanel();
			panel_controles.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
			panel_controles.setBounds(10, 455, 744, 45);
			getContentPane().add(panel_controles);
			panel_controles.setLayout(null);
			
			btnNovo = new JButton("Novo");
			btnNovo.setMnemonic('n');
			btnNovo.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					
					int estadoPesquisa = cmbPesquisa.getSelectedIndex();
					
					aluno = new Aluno();
					Uteis.limpaCampos(getContentPane());
					ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao, "N");
					cmbPesquisa.setSelectedIndex(estadoPesquisa);
				}
			});
			btnNovo.setBounds(10, 11, 65, 23);
			panel_controles.add(btnNovo);
			
			btnSalvar = new JButton("Salvar");
			btnSalvar.addActionListener(new ActionListener() {
				
				public void actionPerformed(ActionEvent arg0) {
					
					if (aluno == null) {
						JOptionPane.showMessageDialog(null, "Sem alterações", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						return;
					}
	
					/* ------------------------------------ VALIDAÇÃO DE CAMPOS ------------------------------------ */

					if(textNomeAlun.getText().trim().length() == 0) {
						JOptionPane.showMessageDialog(null, "Informe o campo: Nome aluno", "Aviso", JOptionPane.WARNING_MESSAGE, null);
						textNomeAlun.requestFocusInWindow();
						return;
					}
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
					/* ------------------------------------ VALIDAÇÃO DE CAMPOS ------------------------------------ */

					aluno.setAlunDtcadastro(new java.sql.Date(Calendar.getInstance().getTimeInMillis()));
					aluno.setAlunNome(textNomeAlun.getText().toUpperCase());
					aluno.setAlunSexo(cmbSexoAlun.getSelectedItem() == null ? null : cmbSexoAlun.getSelectedItem().toString());
					try {
						aluno.setAlunDn(fTextNascAlun.getText().length() < 10 ? null : new java.sql.Date(((Date)new SimpleDateFormat("dd/MM/yyyy").parse(fTextNascAlun.getText())).getTime()));
					} catch (ParseException e) {
						e.printStackTrace();
					}
					aluno.setAlunNacionalidade(cmbNacAlun.getSelectedItem() == null ? null : cmbNacAlun.getSelectedItem().toString());
					aluno.setAlunNaturalidade(textNatAlun.getText().toUpperCase());
					aluno.setAlunReligiao(cmbRelAlun.getSelectedItem() == null ? null : cmbRelAlun.getSelectedItem().toString());
					aluno.setAlunTel1(fTextTelResidAlun.getText().length() < 13 ? null : fTextTelResidAlun.getText());
					aluno.setAlunTel2(fTextTelCelAlun.getText().length() < 13 ? null : fTextTelCelAlun.getText());
					aluno.setAlunEndereco(textEndAlun.getText().toUpperCase());
					aluno.setAlunBairro(textBairroAlun.getText().toUpperCase());
					aluno.setAlunCidade(textCidadeAlun.getText().toUpperCase());
					aluno.setAlunCep(fTextCepAlun.getText().length() < 9 ? null : fTextCepAlun.getText());
					aluno.setAlunUf(cmbEstadoAlun.getSelectedItem() == null ? null : cmbEstadoAlun.getSelectedItem().toString());
					aluno.setAlunSaude(textProbSaudeAlun.getText().toUpperCase());
					aluno.setAlunMedproibido(textMedProibAlun.getText().toUpperCase());
					aluno.setAlunMedutilizado(textMedUtilAlun.getText().toUpperCase());
					aluno.setAlunNomepai(textNomePai.getText().toUpperCase());
					try {
						aluno.setAlunDnpai(fTextNascPai.getText().length() < 10 ? null : new java.sql.Date(((Date)new SimpleDateFormat("dd/MM/yyyy").parse(fTextNascPai.getText())).getTime()));
					} catch (ParseException e1) {
						e1.printStackTrace();
					}
					aluno.setAlunNacionalidadepai(cmbNacPai.getSelectedItem() == null ? null : cmbNacPai.getSelectedItem().toString());
					aluno.setAlunNaturalidadepai(textNatPai.getText().toUpperCase());
					aluno.setAlunRgpai(textRgPai.getText().toString());
					aluno.setAlunCpfpai(fTextCpfPai.getText().length() < 14 ? null : fTextCpfPai.getText());
					aluno.setAlunTel1pai(fTextTelPai.getText().length() < 13 ? null : fTextTelPai.getText());
					aluno.setAlunTel2pai(fTextCelPai.getText().length() < 13 ? null : fTextCelPai.getText());
					aluno.setAlunTel3pai(fTextTelTrabPai.getText().length() < 13 ? null : fTextTelTrabPai.getText());
					aluno.setAlunTrabalhopai(textLocTrabPai.getText().toUpperCase());
					aluno.setAlunProfissaopai(cmbProfPai.getSelectedItem() == null ? null : cmbProfPai.getSelectedItem().toString());
					aluno.setAlunRendapai(Float.parseFloat(fTextRendaPai.getValue() == null ? "0.00" : fTextRendaPai.getValue().toString().replace(",", ".")));
					aluno.setAlunEnderecopai(textEndPai.getText().toUpperCase());
					aluno.setAlunBairropai(textBairroPai.getText().toUpperCase());
					aluno.setAlunCidadepai(textCidadePai.getText().toUpperCase());
					aluno.setAlunCeppai(fTextCepPai.getValue() == null ? null : fTextCepPai.getValue().toString());
					aluno.setAlunUfpai(cmbUfPai.getSelectedItem() == null ? null : cmbUfPai.getSelectedItem().toString());
					aluno.setAlunNomemae(textNomeMae.getText().toUpperCase());
					try {
						aluno.setAlunDnmae(fTextNascMae.getText().length() < 10 ? null : new java.sql.Date(((Date)new SimpleDateFormat("dd/MM/yyyy").parse(fTextNascMae.getText())).getTime()));
					} catch (ParseException e2) {
						e2.printStackTrace();
					}
					aluno.setAlunNacionalidademae(cmbNacMae.getSelectedItem() == null ? null : cmbNacMae.getSelectedItem().toString());
					aluno.setAlunNaturalidademae(textNatMae.getText().toUpperCase());
					aluno.setAlunRgmae(textRgMae.getText().toString().toUpperCase());
					aluno.setAlunCpfmae(fTextCpfMae.getText().length() < 14 ? null : fTextCpfMae.getText());
					aluno.setAlunTel1mae(fTextTelMae.getText().length() < 13 ? null : fTextTelMae.getText());
					aluno.setAlunTel2mae(fTextCelMae.getText().length() < 13 ? null : fTextCelMae.getText());
					aluno.setAlunTel3mae(fTextTelTrabMae.getText().length() < 13 ? null : fTextTelTrabMae.getText());
					aluno.setAlunTrabalhomae(textLocTrabMae.getText().toUpperCase());
					aluno.setAlunProfissaomae(cmbProfMae.getSelectedItem() == null ? null : cmbProfMae.getSelectedItem().toString());
					aluno.setAlunRendamae(Float.parseFloat(fTextRendaMae.getValue() == null ? "0.00" : fTextRendaMae.getValue().toString().replace(",", ".")));
					aluno.setAlunEnderecomae(textEndMae.getText().toUpperCase());
					aluno.setAlunBairromae(textBairroMae.getText().toUpperCase());
					aluno.setAlunCidademae(textCidadeMae.getText().toUpperCase());
					aluno.setAlunCepmae(fTextCepMae.getText().length() < 9 ? null : fTextCepMae.getText());
					aluno.setAlunUfmae(cmbEstadoMae.getSelectedItem() == null ? null : cmbEstadoMae.getSelectedItem().toString());
					aluno.setAlunUfnaturalidade(textNatMae.getText().toUpperCase());
					aluno.setAlunRg(textRgAlun.getText());
					aluno.setAlunRgOrgao(textOrgEmisAlun.getText().toUpperCase());
					try {
						aluno.setAlunRgEmissao(fTextRgDtEmisAlun.getText().length() < 10 ? null : new java.sql.Date(((Date)new SimpleDateFormat("dd/MM/yyyy").parse(fTextRgDtEmisAlun.getText())).getTime()));
					} catch (ParseException e3) {
						e3.printStackTrace();
					}
					aluno.setAlunRgUf(cmbRgEmisUfAlun.getSelectedItem() == null ? null : cmbRgEmisUfAlun.getSelectedItem().toString());
					aluno.setAlunCert(cmbCertCivilAlun.getSelectedItem() == null ? null : cmbCertCivilAlun.getSelectedItem().toString());
					aluno.setAlunCertTermo(textTermoDocAlun.getText().toUpperCase());
					aluno.setAlunCertFolha(textFolhaDocAlun.getText());
					aluno.setAlunCertLivro(textLivroDocAlun.getText());
					try {
						aluno.setAlunCertEmissao(fTextDtEmisDocAlun.getText().length() < 10 ? null : new java.sql.Date(((Date)new SimpleDateFormat("dd/MM/yyyy").parse(fTextDtEmisDocAlun.getText())).getTime()));
					} catch (ParseException e4) {
						e4.printStackTrace();
					}
					aluno.setAlunCertCartorio(textCartDocAlun.getText().toUpperCase());
					aluno.setAlunCertCartUf(cmbEstadoCartDocAlun.getSelectedItem() == null ? null : cmbEstadoCartDocAlun.getSelectedItem().toString());
					aluno.setAlunDocPassaporte(textDocEstrangeiroAlun.getText().toString());
					aluno.setAlunEndComp(textEndCompAlun.getText().toUpperCase());
					aluno.setAlunNis(textNisAlun.getText());
					aluno.setAlunCadastro(cmbEstadoCartDocAlun.getSelectedIndex() == -1 ? cmbSituacaoAlun.getItemAt(0).toString() : cmbSituacaoAlun.getSelectedItem().toString());
					aluno.setAlunCor(cmbCorRaca.getSelectedItem() == null ? null : cmbCorRaca.getSelectedItem().toString());
					aluno.setAlunEmail(textEmailAlun.getText().toLowerCase());
					aluno.setAlunEspecial(cmbEspecialAlun.getSelectedItem() == null ? null : cmbEspecialAlun.getSelectedItem().toString());
					aluno.setAlunSenha(String.valueOf(pTextSenhaAlun.getPassword()).length() == 0 ? gerarSenha() : String.valueOf(pTextSenhaAlun.getPassword()));
					aluno.setAlunObservacoes(aTextObs.getText());
		
					/* ------------------------ INICIO DO CADASTRO ------------------------ */
					if (aluno.getAlunCod() == null || aluno.getAlunCod().intValue() == 0) {
						/* --------------------------- INSERIR ---------------------------- */	
						if (model.selecionarAlunoExistente(aluno.getAlunCpfmae(),aluno.getAlunNome())) {
							JOptionPane.showMessageDialog(null, "Aluno cadastrado!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
							return;
						}
						aluno = model.incluir(aluno);
						/* ---------------------------------------------------------------- */
					} else {
						/* -------------------------- ATUALIZAR --------------------------- */
						if (!textNomeAlun.getText().equalsIgnoreCase(alunoAnterior)) 
							if (model.selecionarAlunoExistente(aluno.getAlunCpfmae(),aluno.getAlunNome())) {
								JOptionPane.showMessageDialog(null, "Aluno cadastrado!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
								return;
							}
											
						if (senhaAnterior.equals(String.valueOf(pTextSenhaAlun.getPassword())))
						aluno.setAlunSenha(senhaAnterior);
						
						model.alterar(aluno);
						/* ---------------------------------------------------------------- */
					}
					/* ------------------------ FINAL DO CADASTRO ------------------------ */
					carregaTabela(model.listarTodos());
					senhaAnterior = null;
					alunoAnterior = null;
					ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao, "S");
				}
			});
			btnSalvar.setBounds(78, 11, 65, 23);
			panel_controles.add(btnSalvar);
			
			btnAlterar = new JButton("Alterar");
			btnAlterar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					/* --------------------------- ALTERAR --------------------------- */
						preencheCampos(linhaSelecionada);
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao, "A");
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
						model.excluir(model.selecionarPorTipo(Integer.parseInt((String) tabelaAlunos.getModel().getValueAt(i, 0))));
						carregaTabela(model.listarTodos());
					}
					ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao, "E");
					/* --------------------------------------------------------------- */
				}
			});
			btnExcluir.setBounds(214, 11, 65, 23);
			panel_controles.add(btnExcluir);
			
			btnAnular = new JButton("Anular");
			btnAnular.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					aluno = null;
					if(!lista.isEmpty()) {
						posicao = linhaSelecionada = 0;
						preencheCampos(posicao);
					}
					ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao, "C");
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
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao);
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
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao);
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
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao);
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
						ControlesSwing.botoesControle(btnNovo, btnSalvar, btnAlterar, btnExcluir, btnAnular, btnPrimeiro, btnAnterior, btnProximo, btnUltimo, lista, posicao);
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

			tPaneAluno = new JTabbedPane(JTabbedPane.TOP);
			tPaneAluno.setBounds(10, 86, 744, 348);
			getContentPane().add(tPaneAluno);
			
			/* ------------------------------------------------------------------------------ */
			//									DADOS DO ALUNO
			/* ------------------------------------------------------------------------------ */
			
			JPanel panel_dados = new JPanel();
			tPaneAluno.addTab("Dados Pessoais", null, panel_dados, null);
			panel_dados.setLayout(null);
			
			JLabel lblNomeAluno = new JLabel("Nome aluno");
			lblNomeAluno.setBounds(10, 14, 100, 14);
			panel_dados.add(lblNomeAluno);
			
			JLabel lblAtivo = new JLabel("Ativo");
			lblAtivo.setBounds(601, 14, 30, 14);
			panel_dados.add(lblAtivo);
			
			JLabel lblSexo = new JLabel("Sexo");
			lblSexo.setBounds(10, 45, 100, 14);
			panel_dados.add(lblSexo);
			
			JLabel lblNascimento = new JLabel("Nascimento");
			lblNascimento.setBounds(212, 45, 60, 14);
			panel_dados.add(lblNascimento);
			
			JLabel lblNacionalidade = new JLabel("Nacionalidade");
			lblNacionalidade.setBounds(364, 45, 71, 14);
			panel_dados.add(lblNacionalidade);
			
			JLabel lblNaturalidade = new JLabel("Naturalidade");
			lblNaturalidade.setBounds(557, 45, 64, 14);
			panel_dados.add(lblNaturalidade);
			
			JLabel lblCorRaca = new JLabel("Cor/Raça");
			lblCorRaca.setBounds(10, 76, 100, 14);
			panel_dados.add(lblCorRaca);
			
			JLabel lblEndereco = new JLabel("Endereço");
			lblEndereco.setBounds(220, 76, 46, 14);
			panel_dados.add(lblEndereco);
			
			JLabel lblComplemento = new JLabel("Complemento");
			lblComplemento.setBounds(10, 107, 100, 14);
			panel_dados.add(lblComplemento);
			
			JLabel lblBairro = new JLabel("Bairro");
			lblBairro.setBounds(483, 107, 36, 14);
			panel_dados.add(lblBairro);
			
			JLabel lblCep = new JLabel("CEP");
			lblCep.setBounds(10, 138, 100, 14);
			panel_dados.add(lblCep);
			
			JLabel lblCidade = new JLabel("Cidade");
			lblCidade.setBounds(217, 138, 36, 14);
			panel_dados.add(lblCidade);
			
			JLabel lblEstado = new JLabel("Estado");
			lblEstado.setBounds(483, 138, 37, 14);
			panel_dados.add(lblEstado);
			
			JLabel lblReligiao = new JLabel("Religião/Seita");
			lblReligiao.setBounds(10, 169, 100, 14);
			panel_dados.add(lblReligiao);
			
			JLabel lblTelefoneRersidencial = new JLabel("Telefone Residencial");
			lblTelefoneRersidencial.setBounds(323, 169, 108, 14);
			panel_dados.add(lblTelefoneRersidencial);
			
			JLabel lblTelefoneCelular = new JLabel("Telefone Celular");
			lblTelefoneCelular.setBounds(542, 169, 84, 14);
			panel_dados.add(lblTelefoneCelular);
			
			JLabel lblEmail = new JLabel("E-mail");
			lblEmail.setVerticalAlignment(SwingConstants.TOP);
			lblEmail.setBounds(10, 200, 100, 14);
			panel_dados.add(lblEmail);
			
			JLabel lblSenha = new JLabel("Senha");
			lblSenha.setBounds(473, 200, 36, 14);
			panel_dados.add(lblSenha);
			
			JLabel lblEspecial = new JLabel("Aluno Especial");
			lblEspecial.setBounds(10, 231, 100, 14);
			panel_dados.add(lblEspecial);
			
			JLabel lblProbSaude = new JLabel("Patologia");
			lblProbSaude.setBounds(186, 231, 52, 14);
			panel_dados.add(lblProbSaude);
			
			JLabel lblMedicacao = new JLabel("Medicação");
			lblMedicacao.setBounds(10, 262, 100, 14);
			panel_dados.add(lblMedicacao);
			
			lblProibidos = new JLabel("Med. Proibido");
			lblProibidos.setBounds(10, 293, 100, 14);
			panel_dados.add(lblProibidos);
			
			textNomeAlun = new JTextField();
			textNomeAlun.setBounds(124, 11, 468, 20);
			textNomeAlun.setDocument(new JTextFieldLimit(50, true));
			panel_dados.add(textNomeAlun);
			
			cmbSituacaoAlun = new JComboBox();
			cmbSituacaoAlun.setModel(new DefaultComboBoxModel(Situacao.values()));
			cmbSituacaoAlun.setBounds(634, 11, 95, 20);
			panel_dados.add(cmbSituacaoAlun);
			
			cmbSexoAlun = new JComboBox();
			cmbSexoAlun.setModel(new DefaultComboBoxModel(Sexo.values()));
			cmbSexoAlun.setBounds(124, 42, 78, 20);
			panel_dados.add(cmbSexoAlun);

			fTextNascAlun = new JFormattedTextField(new MaskFormatter("##/##/####"));
			fTextNascAlun.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextNascAlun.getText().equals("  /  /    ")) {
						fTextNascAlun.setValue(null);
					}
				}
			});
			fTextNascAlun.setBounds(276, 42, 78, 20);
			panel_dados.add(fTextNascAlun);

			cmbNacAlun = new JComboBox();
			cmbNacAlun.setModel(new DefaultComboBoxModel(Nacionalidade.values()));
			cmbNacAlun.setBounds(439, 42, 108, 20);
			panel_dados.add(cmbNacAlun);
			
			textNatAlun = new JTextField();
			textNatAlun.setBounds(621, 42, 108, 20);
			textNatAlun.setDocument(new JTextFieldLimit(25, true));
			panel_dados.add(textNatAlun);
			
			cmbCorRaca = new JComboBox();
			cmbCorRaca.setModel(new DefaultComboBoxModel(Raca.values()));
			cmbCorRaca.setBounds(124, 73, 78, 20);
			panel_dados.add(cmbCorRaca);
			
			textEndAlun = new JTextField();
			textEndAlun.setBounds(276, 73, 453, 20);
			textEndAlun.setDocument(new JTextFieldLimit(50, true));
			panel_dados.add(textEndAlun);
			
			textEndCompAlun = new JTextField();
			textEndCompAlun.setBounds(124, 104, 338, 20);
			textEndCompAlun.setDocument(new JTextFieldLimit(30, true));
			panel_dados.add(textEndCompAlun);
			
			textBairroAlun = new JTextField();
			textBairroAlun.setBounds(528, 104, 201, 20);
			textBairroAlun.setDocument(new JTextFieldLimit(30, true));
			panel_dados.add(textBairroAlun);
			
			fTextCepAlun = new JFormattedTextField(new MaskFormatter("#####-###"));
			fTextCepAlun.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent e) {
					if(fTextNascAlun.getText().equals("     -   ")) { 
						fTextNascAlun.setValue(null);
					}
				}
			});
			fTextCepAlun.setBounds(124, 135, 71, 20);
			panel_dados.add(fTextCepAlun);
			
			textCidadeAlun = new JTextField();
			textCidadeAlun.setBounds(259, 135, 196, 20);
			textCidadeAlun.setDocument(new JTextFieldLimit(25, true));
			panel_dados.add(textCidadeAlun);
			
			cmbEstadoAlun = new JComboBox();
			cmbEstadoAlun.setModel(new DefaultComboBoxModel(Estado.values()));
			cmbEstadoAlun.setBounds(529, 135, 200, 20);
			panel_dados.add(cmbEstadoAlun);
			
			cmbRelAlun = new JComboBox();
			cmbRelAlun.setModel(new DefaultComboBoxModel(Religiao.values()));
			cmbRelAlun.setBounds(124, 166, 189, 20);
			panel_dados.add(cmbRelAlun);
			
			fTextTelResidAlun = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextTelResidAlun.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextTelResidAlun.getText().equals("(  )    -    ")) { 
						fTextTelResidAlun.setValue(null);
					}
				}
			});
			fTextTelResidAlun.setBounds(432, 166, 100, 20);
			panel_dados.add(fTextTelResidAlun);

			fTextTelCelAlun = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextTelCelAlun.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextTelCelAlun.getText().equals("(  )    -    ")) {
						fTextTelCelAlun.setValue(null);
					}
				}
			});
			fTextTelCelAlun.setBounds(629, 166, 100, 20);
			panel_dados.add(fTextTelCelAlun);

			textEmailAlun = new JTextField();
			textEmailAlun.setBounds(124, 197, 331, 20);
			textEmailAlun.setDocument(new JTextFieldLimit(100));
			panel_dados.add(textEmailAlun);
			
			pTextSenhaAlun = new JPasswordField();
			pTextSenhaAlun.setBounds(513, 197, 108, 20);
			pTextSenhaAlun.setDocument(new JTextFieldLimit(6));
			panel_dados.add(pTextSenhaAlun);
			
			JButton btnGerarSenhaAlun = new JButton("Gerar Senha");
			btnGerarSenhaAlun.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {

					pTextSenhaAlun.setText(gerarSenha());
	
				}
			});
			btnGerarSenhaAlun.setBounds(634, 196, 95, 23);
			panel_dados.add(btnGerarSenhaAlun);
			
			cmbEspecialAlun = new JComboBox();
			cmbEspecialAlun.setModel(new DefaultComboBoxModel(Afirmacao.values()));
			cmbEspecialAlun.setBounds(124, 228, 52, 20);
			panel_dados.add(cmbEspecialAlun);
			
			textProbSaudeAlun = new JTextField();
			textProbSaudeAlun.setBounds(237, 228, 492, 20);
			textProbSaudeAlun.setDocument(new JTextFieldLimit(0, true));
			panel_dados.add(textProbSaudeAlun);
			
			textMedUtilAlun = new JTextField();
			textMedUtilAlun.setBounds(124, 259, 605, 20);
			textMedUtilAlun.setDocument(new JTextFieldLimit(0, true));
			panel_dados.add(textMedUtilAlun);
			
			textMedProibAlun = new JTextField();
			textMedProibAlun.setBounds(124, 290, 605, 20);
			textMedProibAlun.setDocument(new JTextFieldLimit(0, true));
			panel_dados.add(textMedProibAlun);
			
			JPanel panel_documentos = new JPanel();
			tPaneAluno.addTab("Documentos", null, panel_documentos, null);
			panel_documentos.setLayout(null);
			
			JLabel lblDocumentoDeIdentidade = new JLabel("Doc. de Identidade");
			lblDocumentoDeIdentidade.setBounds(10, 14, 100, 14);
			panel_documentos.add(lblDocumentoDeIdentidade);
			
			JLabel lblOrgaoEmissor = new JLabel("Órgão Emissor");
			lblOrgaoEmissor.setBounds(330, 14, 74, 14);
			panel_documentos.add(lblOrgaoEmissor);
			
			JLabel lblUf = new JLabel("Estado");
			lblUf.setBounds(535, 14, 39, 14);
			panel_documentos.add(lblUf);
			
			JLabel lblDataDaExpedio = new JLabel("Data da Expedição");
			lblDataDaExpedio.setBounds(10, 45, 100, 14);
			panel_documentos.add(lblDataDaExpedio);
			
			JLabel lblDocEstranPassaporte = new JLabel("Documento de Estrangeiro/Passaporte");
			lblDocEstranPassaporte.setBounds(316, 45, 193, 14);
			panel_documentos.add(lblDocEstranPassaporte);
			
			JLabel lblCertidaoCivil = new JLabel("Certidão Civil");
			lblCertidaoCivil.setBounds(10, 76, 100, 14);
			panel_documentos.add(lblCertidaoCivil);
			
			JLabel lblTermo = new JLabel("Termo");
			lblTermo.setBounds(402, 76, 33, 14);
			panel_documentos.add(lblTermo);
			
			JLabel lblFolha = new JLabel("Folha");
			lblFolha.setBounds(516, 76, 33, 14);
			panel_documentos.add(lblFolha);
			
			JLabel lblLivro = new JLabel("Livro");
			lblLivro.setBounds(626, 76, 31, 14);
			panel_documentos.add(lblLivro);
			
			JLabel lblDataDaEmisso = new JLabel("Data da Emissão");
			lblDataDaEmisso.setBounds(10, 107, 100, 14);
			panel_documentos.add(lblDataDaEmisso);
			
			JLabel lblCartrio = new JLabel("Cartório");
			lblCartrio.setBounds(280, 107, 46, 14);
			panel_documentos.add(lblCartrio);
			
			JLabel lblEstadoCartorio = new JLabel("Estado");
			lblEstadoCartorio.setBounds(535, 107, 39, 14);
			panel_documentos.add(lblEstadoCartorio);
			
			JLabel lblCpfAluno = new JLabel("CPF");
			lblCpfAluno.setBounds(10, 138, 100, 14);
			panel_documentos.add(lblCpfAluno);
			
			JLabel lblNis = new JLabel("NIS");
			lblNis.setBounds(330, 138, 22, 14);
			panel_documentos.add(lblNis);
			
			JLabel lblFotografia = new JLabel("Fotografia");
			lblFotografia.setBounds(10, 170, 100, 14);
			panel_documentos.add(lblFotografia);
			
			textRgAlun = new JTextField();
			textRgAlun.setBounds(124, 11, 130, 20);
			textRgAlun.setDocument(new JTextFieldLimit(25));
			panel_documentos.add(textRgAlun);
			
			textOrgEmisAlun = new JTextField();
			textOrgEmisAlun.setBounds(405, 11, 114, 20);
			textOrgEmisAlun.setDocument(new JTextFieldLimit(20, true));
			panel_documentos.add(textOrgEmisAlun);
			
			cmbRgEmisUfAlun = new JComboBox();
			cmbRgEmisUfAlun.setModel(new DefaultComboBoxModel(Estado.values()));
			cmbRgEmisUfAlun.setBounds(578, 11, 151, 20);
			panel_documentos.add(cmbRgEmisUfAlun);

			fTextRgDtEmisAlun = new JFormattedTextField(new MaskFormatter("##/##/####"));
			fTextRgDtEmisAlun.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextRgDtEmisAlun.getText().equals("  /  /    ")) {
						fTextRgDtEmisAlun.setValue(null);
					}
				}
			});
			fTextRgDtEmisAlun.setBounds(125, 42, 114, 20);
			panel_documentos.add(fTextRgDtEmisAlun);

			textDocEstrangeiroAlun = new JTextField();
			textDocEstrangeiroAlun.setBounds(506, 42, 223, 20);
			textDocEstrangeiroAlun.setDocument(new JTextFieldLimit(25, true));
			panel_documentos.add(textDocEstrangeiroAlun);
			
			cmbCertCivilAlun = new JComboBox();
			cmbCertCivilAlun.setModel(new DefaultComboBoxModel(Certidao.values()));
			cmbCertCivilAlun.setBounds(125, 73, 193, 20);
			panel_documentos.add(cmbCertCivilAlun);
			
			textTermoDocAlun = new JTextField();
			textTermoDocAlun.setBounds(436, 73, 69, 20);
			textTermoDocAlun.setDocument(new JTextFieldLimit(15));
			panel_documentos.add(textTermoDocAlun);
			
			textFolhaDocAlun = new JTextField();
			textFolhaDocAlun.setBounds(547, 73, 69, 20);
			textFolhaDocAlun.setDocument(new JTextFieldLimit(10));
			panel_documentos.add(textFolhaDocAlun);
			
			textLivroDocAlun = new JTextField();
			textLivroDocAlun.setBounds(660, 73, 69, 20);
			textLivroDocAlun.setDocument(new JTextFieldLimit(10));
			panel_documentos.add(textLivroDocAlun);

			fTextDtEmisDocAlun = new JFormattedTextField(new MaskFormatter("##/##/####"));
			fTextDtEmisDocAlun.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextDtEmisDocAlun.getText().equals("  /  /    ")) {
						fTextDtEmisDocAlun.setValue(null);
					}
				}
			});
			fTextDtEmisDocAlun.setBounds(124, 104, 84, 20);
			panel_documentos.add(fTextDtEmisDocAlun);

			textCartDocAlun = new JTextField();
			textCartDocAlun.setBounds(330, 104, 189, 20);
			textCartDocAlun.setDocument(new JTextFieldLimit(50, true));
			panel_documentos.add(textCartDocAlun);
			
			cmbEstadoCartDocAlun = new JComboBox();
			cmbEstadoCartDocAlun.setModel(new DefaultComboBoxModel(Estado.values()));
			cmbEstadoCartDocAlun.setBounds(578, 104, 151, 20);
			panel_documentos.add(cmbEstadoCartDocAlun);

			fTextCpfAlun = new JFormattedTextField(new MaskFormatter("###.###.###-##"));
			fTextCpfAlun.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextCpfAlun.getText().equals("   .   .   -  ")) {
						fTextCpfAlun.setValue(null);
					}
				}
			});
			fTextCpfAlun.setBounds(124, 135, 130, 20);
			panel_documentos.add(fTextCpfAlun);

			textNisAlun = new JTextField();
			textNisAlun.setBounds(352, 135, 130, 20);
			textNisAlun.setDocument(new JTextFieldLimit(15));
			panel_documentos.add(textNisAlun);
			
			JPanel panelFotoAlun = new JPanel();
			panelFotoAlun.setBorder(new TitledBorder(null, "", TitledBorder.LEADING, TitledBorder.TOP, null, null));
			panelFotoAlun.setBounds(125, 166, 116, 141);
			panel_documentos.add(panelFotoAlun);
			panelFotoAlun.setLayout(null);
			
			lblFoto = new JLabel("");
			lblFoto.setBounds(3, 3, 110, 134);
			panelFotoAlun.add(lblFoto);

		    btnCarregar = new JButton("Carregar");
			btnCarregar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {

					dialogoFoto = new JFileChooser();
					FileNameExtensionFilter filtro = new FileNameExtensionFilter("Arquivos de Imagens (*.JPG, *.PNG)", "jpg", "png");
					dialogoFoto.setFileFilter(filtro);
					dialogoFoto.setAcceptAllFileFilterUsed(false);
					int resultado = dialogoFoto.showOpenDialog(FrameAluno.this);
					if (resultado == JFileChooser.APPROVE_OPTION) {
						File arqSelecionado = dialogoFoto.getSelectedFile();
						byte[] byteFile = new byte[(int) arqSelecionado.length()];
						try {
							FileInputStream fileInputStream = new FileInputStream(arqSelecionado); // convert file into array of bytes
							fileInputStream.read(byteFile);
							fileInputStream.close();
						} catch (Exception ex) {
							ex.printStackTrace();
						}
						lblFoto.setIcon(new ImageIcon(arqSelecionado
								.getAbsolutePath()));
						if (aluno != null)
							aluno.setAlunFoto(byteFile);
					}
				}
			});
			btnCarregar.setBounds(249, 166, 89, 23);
			panel_documentos.add(btnCarregar);
			
			JButton btnCapturar = new JButton("Capturar");
			btnCapturar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					
					FrameCaptura frameCaptura = FramePrincipal.getInstanciaCaptura();
					frameCaptura.setVisible(true);
	
				}
			});
			btnCapturar.setBounds(249, 200, 89, 23);
			panel_documentos.add(btnCapturar);
			
			JButton btnExportar = new JButton("Exportar");
			btnExportar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {

					Image img = (new ImageIcon(aluno.getAlunFoto())).getImage();

					BufferedImage bi = new BufferedImage(img.getWidth(null), img.getHeight(null), BufferedImage.TYPE_INT_RGB);
					bi = bi.getSubimage(0, 0, 110, 134);
					
					Graphics2D grph = (Graphics2D) bi.getGraphics();
			        grph.drawImage(img, 0, 0, null);
			        grph.dispose();
					
					JFileChooser jfc = new JFileChooser();
					jfc.setMultiSelectionEnabled(false);
					jfc.setSelectedFile(new File(aluno.getAlunNome().concat(".jpg"))); 
					jfc.showSaveDialog(FrameAluno.this);
					if (jfc.getSelectedFile() != null) {
						try {
							ImageIO.write(bi, "jpg", jfc.getSelectedFile());
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			});
			btnExportar.setBounds(249, 234, 89, 23);
			panel_documentos.add(btnExportar);
			
			JButton btnApagar = new JButton("Apagar");
			btnApagar.setBounds(250, 284, 89, 23);
			panel_documentos.add(btnApagar);
			
			/* ------------------------------------------------------------------------------ */
			//									DADOS DO PAI
			/* ------------------------------------------------------------------------------ */
			
			JPanel panel_pai = new JPanel();
			tPaneAluno.addTab("Dados do Pai", null, panel_pai, null);
			panel_pai.setLayout(null);
			
			JLabel lblNomePai = new JLabel("Nome do Pai");
			lblNomePai.setBounds(10, 14, 100, 14);
			panel_pai.add(lblNomePai);
			
			JLabel lblEnderecoPai = new JLabel("Endereço");
			lblEnderecoPai.setBounds(10, 45, 100, 14);
			panel_pai.add(lblEnderecoPai);
			
			JLabel lblBairroPai = new JLabel("Bairro");
			lblBairroPai.setBounds(518, 45, 36, 14);
			panel_pai.add(lblBairroPai);
			
			JLabel lblCepPai = new JLabel("CEP");
			lblCepPai.setBounds(10, 76, 100, 14);
			panel_pai.add(lblCepPai);
			
			JLabel lblCidadePai = new JLabel("Cidade");
			lblCidadePai.setBounds(217, 76, 36, 14);
			panel_pai.add(lblCidadePai);
			
			JLabel lblEstadoPai = new JLabel("Estado");
			lblEstadoPai.setBounds(483, 76, 37, 14);
			panel_pai.add(lblEstadoPai);
			
			JLabel lblRendaPai = new JLabel("Renda");
			lblRendaPai.setBounds(10, 107, 100, 14);
			panel_pai.add(lblRendaPai);
			
			JLabel lblCpfPai = new JLabel("CPF");
			lblCpfPai.setBounds(217, 107, 27, 14);
			panel_pai.add(lblCpfPai);
			
			JLabel lblRgPai = new JLabel("RG");
			lblRgPai.setBounds(388, 107, 22, 14);
			panel_pai.add(lblRgPai);
			
			JLabel lblNascimentoPai = new JLabel("Data Nascimento");
			lblNascimentoPai.setBounds(561, 107, 85, 14);
			panel_pai.add(lblNascimentoPai);
			
			JLabel lblNaturalidadePai = new JLabel("Naturalidade");
			lblNaturalidadePai.setBounds(10, 138, 100, 14);
			panel_pai.add(lblNaturalidadePai);
			
			JLabel lblNacionalidadePai = new JLabel("Nacionalidade");
			lblNacionalidadePai.setBounds(390, 138, 72, 14);
			panel_pai.add(lblNacionalidadePai);
			
			JLabel lblProfissaoPai = new JLabel("Profissão");
			lblProfissaoPai.setBounds(10, 171, 100, 14);
			panel_pai.add(lblProfissaoPai);
			
			JLabel lblTelPai = new JLabel("Tel. Fixo");
			lblTelPai.setBounds(416, 171, 46, 14);
			panel_pai.add(lblTelPai);
			
			JLabel lblCelPai = new JLabel("Tel. Celular");
			lblCelPai.setBounds(571, 171, 59, 14);
			panel_pai.add(lblCelPai);
			
			JLabel lblLocTrabPai = new JLabel("Local Trabalho");
			lblLocTrabPai.setBounds(10, 203, 100, 14);
			panel_pai.add(lblLocTrabPai);
			
			JLabel lblTelTrabPai = new JLabel("Tel. do Trabalho");
			lblTelTrabPai.setBounds(550, 203, 80, 14);
			panel_pai.add(lblTelTrabPai);
			
			textNomePai = new JTextField();
			textNomePai.setBounds(124, 11, 605, 20);
			textNomePai.setDocument(new JTextFieldLimit(50, true));
			panel_pai.add(textNomePai);
			
			textEndPai = new JTextField();
			textEndPai.setBounds(124, 42, 384, 20);
			textEndPai.setDocument(new JTextFieldLimit(50, true));
			panel_pai.add(textEndPai);
			
			textBairroPai = new JTextField();
			textBairroPai.setBounds(561, 42, 168, 20);
			textBairroPai.setDocument(new JTextFieldLimit(30, true));
			panel_pai.add(textBairroPai);
			
			fTextCepPai = new JFormattedTextField(new MaskFormatter("#####-###"));
			fTextCepPai.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextCepPai.getText().equals("     -   ")) { 
						fTextCepPai.setValue(null);
					}
				}
			});
			fTextCepPai.setBounds(124, 73, 72, 20);
			panel_pai.add(fTextCepPai);
			
			textCidadePai = new JTextField();
			textCidadePai.setBounds(259, 73, 196, 20);
			textCidadePai.setDocument(new JTextFieldLimit(25, true));
			panel_pai.add(textCidadePai);
			
			cmbUfPai = new JComboBox();
			cmbUfPai.setModel(new DefaultComboBoxModel(Estado.values()));
			cmbUfPai.setBounds(529, 73, 200, 20);
			panel_pai.add(cmbUfPai);
			
			fTextRendaPai = new JFormattedTextField();
			fTextRendaPai.setBounds(124, 104, 71, 20);
			panel_pai.add(fTextRendaPai);
			
			fTextCpfPai = new JFormattedTextField(new MaskFormatter("###.###.###-##"));
			fTextCpfPai.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextCpfPai.getText().equals("   .   .   -  ")) { 
						fTextCpfPai.setValue(null);
					}
				}
			});
			fTextCpfPai.setBounds(243, 104, 125, 20);
			panel_pai.add(fTextCpfPai);
			
			textRgPai = new JTextField();
			textRgPai.setBounds(416, 104, 104, 20);
			textRgPai.setDocument(new JTextFieldLimit(25));
			panel_pai.add(textRgPai);

			fTextNascPai = new JFormattedTextField(new MaskFormatter("##/##/####"));
			fTextNascPai.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextNascPai.getText().equals("  /  /    ")) {
						fTextNascPai.setValue(null);
					}
				}
			});
			fTextNascPai.setBounds(647, 104, 82, 20);
			panel_pai.add(fTextNascPai);

			textNatPai = new JTextField();
			textNatPai.setBounds(123, 135, 229, 20);
			textNatPai.setDocument(new JTextFieldLimit(25, true));
			panel_pai.add(textNatPai);
			
			cmbNacPai = new JComboBox();
			cmbNacPai.setModel(new DefaultComboBoxModel(Nacionalidade.values()));
			cmbNacPai.setBounds(472, 135, 257, 20);
			panel_pai.add(cmbNacPai);
			
			cmbProfPai = new JComboBox();
			cmbProfPai.setModel(new DefaultComboBoxModel(Profissao.values()));
			cmbProfPai.setBounds(124, 168, 276, 20);
			panel_pai.add(cmbProfPai);

			fTextTelPai = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextTelPai.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextTelPai.getText().equals("(  )    -    ")) {
						fTextTelPai.setValue(null);
					}
				}
			});
			fTextTelPai.setBounds(465, 168, 89, 20);
			panel_pai.add(fTextTelPai);

			fTextCelPai = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextCelPai.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextCelPai.getText().equals("(  )    -    ")) {
						fTextCelPai.setValue(null);
					}
				}
			});
			fTextCelPai.setBounds(640, 168, 89, 20);
			panel_pai.add(fTextCelPai);

			textLocTrabPai = new JTextField();
			textLocTrabPai.setBounds(124, 200, 415, 20);
			textLocTrabPai.setDocument(new JTextFieldLimit(30, true));
			panel_pai.add(textLocTrabPai);

			fTextTelTrabPai = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextTelTrabPai.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextTelTrabPai.getText().equals("(  )    -    ")) { 
						fTextTelTrabPai.setValue(null);
					}
				}
			});
			fTextTelTrabPai.setBounds(640, 200, 89, 20);
			panel_pai.add(fTextTelTrabPai);
			
			/* ------------------------------------------------------------------------------ */
			//									DADOS DA MAE
			/* ------------------------------------------------------------------------------ */
			
			JPanel panel_mae = new JPanel();
			panel_mae.setLayout(null);
			tPaneAluno.addTab("Dados da Mãe", null, panel_mae, null);
			
			JLabel lblNomeMae = new JLabel("Nome da Mãe");
			lblNomeMae.setBounds(10, 14, 100, 14);
			panel_mae.add(lblNomeMae);
			
			JLabel lblEnderecoMae = new JLabel("Endereço");
			lblEnderecoMae.setBounds(10, 45, 100, 14);
			panel_mae.add(lblEnderecoMae);
			
			JLabel lblBairroMae = new JLabel("Bairro");
			lblBairroMae.setBounds(518, 45, 36, 14);
			panel_mae.add(lblBairroMae);
			
			JLabel lblCepMae = new JLabel("CEP");
			lblCepMae.setBounds(10, 76, 100, 14);
			panel_mae.add(lblCepMae);
			
			JLabel lblCidadeMae = new JLabel("Cidade");
			lblCidadeMae.setBounds(217, 76, 36, 14);
			panel_mae.add(lblCidadeMae);
			
			JLabel lblEstadoMae = new JLabel("Estado");
			lblEstadoMae.setBounds(483, 76, 37, 14);
			panel_mae.add(lblEstadoMae);
			
			JLabel lblRendaMae = new JLabel("Renda");
			lblRendaMae.setBounds(10, 107, 100, 14);
			panel_mae.add(lblRendaMae);
			
			JLabel lblCpfMae = new JLabel("CPF");
			lblCpfMae.setBounds(217, 107, 22, 14);
			panel_mae.add(lblCpfMae);
			
			JLabel lblRgMae = new JLabel("RG");
			lblRgMae.setBounds(388, 107, 22, 14);
			panel_mae.add(lblRgMae);
			
			JLabel lblNascimentoMae = new JLabel("Data Nascimento");
			lblNascimentoMae.setBounds(561, 107, 85, 14);
			panel_mae.add(lblNascimentoMae);
			
			JLabel lblNaturalidadeMae = new JLabel("Naturalidade");
			lblNaturalidadeMae.setBounds(10, 138, 100, 14);
			panel_mae.add(lblNaturalidadeMae);
			
			JLabel lblNacionalidadeMae = new JLabel("Nacionalidade");
			lblNacionalidadeMae.setBounds(390, 138, 72, 14);
			panel_mae.add(lblNacionalidadeMae);
			
			JLabel lblProfissaoMae = new JLabel("Profissão");
			lblProfissaoMae.setBounds(10, 171, 100, 14);
			panel_mae.add(lblProfissaoMae);
			
			JLabel lblTelMae = new JLabel("Tel. Fixo");
			lblTelMae.setBounds(416, 171, 46, 14);
			panel_mae.add(lblTelMae);
			
			JLabel lblCelMae = new JLabel("Tel. Celular");
			lblCelMae.setBounds(571, 171, 59, 14);
			panel_mae.add(lblCelMae);
			
			JLabel lblLocTrabMae = new JLabel("Local Trabalho");
			lblLocTrabMae.setBounds(10, 203, 100, 14);
			panel_mae.add(lblLocTrabMae);
			
			JLabel lblTelTrabMae = new JLabel("Tel. do Trabalho");
			lblTelTrabMae.setBounds(550, 203, 80, 14);
			panel_mae.add(lblTelTrabMae);
			
			textNomeMae = new JTextField();
			textNomeMae.setBounds(124, 11, 605, 20);
			textNomeMae.setDocument(new JTextFieldLimit(50, true));
			panel_mae.add(textNomeMae);
			
			textEndMae = new JTextField();
			textEndMae.setBounds(124, 42, 384, 20);
			textEndMae.setDocument(new JTextFieldLimit(50, true));
			panel_mae.add(textEndMae);
			
			textBairroMae = new JTextField();
			textBairroMae.setBounds(561, 42, 168, 20);
			textBairroMae.setDocument(new JTextFieldLimit(30, true));
			panel_mae.add(textBairroMae);
			
			fTextCepMae = new JFormattedTextField(new MaskFormatter("#####-###"));
			fTextCepMae.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextCepMae.getText().equals("     -   ")) { 
						fTextCepMae.setValue(null);
					}
				}
			});
			fTextCepMae.setBounds(124, 73, 71, 20);
			panel_mae.add(fTextCepMae);
			
			textCidadeMae = new JTextField();
			textCidadeMae.setBounds(259, 73, 196, 20);
			textCidadeMae.setDocument(new JTextFieldLimit(25, true));
			panel_mae.add(textCidadeMae);
			
			cmbEstadoMae = new JComboBox();
			cmbEstadoMae.setModel(new DefaultComboBoxModel(Estado.values()));
			cmbEstadoMae.setBounds(529, 73, 200, 20);
			panel_mae.add(cmbEstadoMae);

			fTextRendaMae = new JFormattedTextField();
			fTextRendaMae.setBounds(124, 104, 71, 20);
			panel_mae.add(fTextRendaMae);

			fTextCpfMae = new JFormattedTextField(new MaskFormatter("###.###.###-##"));
			fTextCpfMae.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextCpfMae.getText().equals("   .   .   -  ")) {
						fTextCpfMae.setValue(null);
					}
				}
			});
			fTextCpfMae.setBounds(243, 104, 125, 20);
			panel_mae.add(fTextCpfMae);

			textRgMae = new JTextField();
			textRgMae.setBounds(416, 104, 104, 20);
			textRgMae.setDocument(new JTextFieldLimit(25));
			panel_mae.add(textRgMae);

			fTextNascMae = new JFormattedTextField(new MaskFormatter("##/##/####"));
			fTextNascMae.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextNascMae.getText().equals("  /  /    ")) {
						fTextNascMae.setValue(null);
					}
				}
			});
			fTextNascMae.setBounds(647, 104, 82, 20);
			panel_mae.add(fTextNascMae);

			textNatMae = new JTextField();
			textNatMae.setBounds(123, 135, 229, 20);
			textNatMae.setDocument(new JTextFieldLimit(25, true));
			panel_mae.add(textNatMae);
			
			cmbNacMae = new JComboBox();
			cmbNacMae.setModel(new DefaultComboBoxModel(Nacionalidade.values()));
			cmbNacMae.setBounds(472, 135, 257, 20);
			panel_mae.add(cmbNacMae);
			
			cmbProfMae = new JComboBox();
			cmbProfMae.setModel(new DefaultComboBoxModel(Profissao.values()));
			cmbProfMae.setBounds(124, 168, 276, 20);
			panel_mae.add(cmbProfMae);

			fTextTelMae = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextTelMae.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextTelMae.getText().equals("(  )    -    ")) {
						fTextTelMae.setValue(null);
					}
				}
			});
			fTextTelMae.setBounds(465, 168, 89, 20);
			panel_mae.add(fTextTelMae);

			fTextCelMae = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextCelMae.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if (fTextCelMae.getText().equals("(  )    -    ")) {
						fTextCelMae.setValue(null);
					}
				}
			});
			fTextCelMae.setBounds(640, 168, 89, 20);
			panel_mae.add(fTextCelMae);

			textLocTrabMae = new JTextField();
			textLocTrabMae.setBounds(124, 200, 415, 20);
			textLocTrabMae.setDocument(new JTextFieldLimit(30, true));
			panel_mae.add(textLocTrabMae);
			
			fTextTelTrabMae = new JFormattedTextField(new MaskFormatter("(##)####-####"));
			fTextTelTrabMae.addFocusListener(new FocusAdapter() {
				@Override
				public void focusLost(FocusEvent arg0) {
					if(fTextTelTrabMae.getText().equals("(  )    -    ")) { 
						fTextTelTrabMae.setValue(null);
					}
				}
			});
			fTextTelTrabMae.setBounds(640, 200, 89, 20);
			panel_mae.add(fTextTelTrabMae);
			
			/* ------------------------------------------------------------------------------ */
			//							DADOS DO RESPONSAVEL FINANCEIRO
			/* ------------------------------------------------------------------------------ */
			
			panel_responsavel = new JPanel();
			panel_responsavel.setLayout(null);
			tPaneAluno.addTab("Dados do Responsável Financeiro", null, panel_responsavel, null);

			lblNomeResp = new JLabel("Nome do Responsável");
			lblNomeResp.setBounds(10, 14, 108, 14);
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
			
			JComboBox cmbTipo = new JComboBox();
			cmbTipo.setModel(new DefaultComboBoxModel(new String[] {"Pai", "Mãe", "Outro"}));
			cmbTipo.setBounds(124, 231, 60, 20);
			panel_responsavel.add(cmbTipo);

			JButton btnResp = new JButton("Selecionar Responsável Financeiro");
			btnResp.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {

					FramePrincipal.codResponsavel = responsavel.getRespCod();
					
					System.out.println(responsavel.getRespCod());
					
					FrameResponsavel frameResponsavel = FramePrincipal.getInstanciaResponsavel();
					getDesktopPane().remove(frameResponsavel); 
					getDesktopPane().add(frameResponsavel); 
					getDesktopPane().moveToFront(frameResponsavel);
					frameResponsavel.setVisible(true); 

				}
			});
			btnResp.setBounds(193, 230, 207, 23);
			panel_responsavel.add(btnResp);
            
			/* ------------------------------------------------------------------------------ */
			//									OBSERVACOES
			/* ------------------------------------------------------------------------------ */
			
			JPanel panel_observacoes = new JPanel();
			tPaneAluno.addTab("Observações", null, panel_observacoes, null);
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
			//									LISTA ALUNOS
			/* ------------------------------------------------------------------------------ */
			
			JPanel panel_lista = new JPanel();
			tPaneAluno.addTab("Alunos Cadastrados", null, panel_lista, null);
			panel_lista.setLayout(null);
			
			TableModel tabelaModel = new DefaultTableModel(new String[][] { {} }, new String[] { "Código", "Nome" }) {
				
				private static final long serialVersionUID = 1L;
				@Override
				public boolean isCellEditable(int row, int column) {
					return false;
				}
				
			};
			
			tabelaAlunos = new JTable();
			tabelaAlunos.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
			tabelaAlunos.addMouseListener(new MouseAdapter() {
				@Override
				public void mouseClicked(MouseEvent evt) {
					tabelaMouseClicked(evt);
				}
			});
			tabelaAlunos.setModel(tabelaModel);
			tabelaAlunos.setBounds(10, 25, 684, 119);
			panel_lista.add(tabelaAlunos);
			
			scrollTab = new JScrollPane(tabelaAlunos);
			panel_lista.add(scrollTab);
			scrollTab.setBounds(10, 11, 719, 299);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void carregaTabela(List<Aluno> alunos) {
		TableColumnModel tcmOculta = tabelaAlunos.getColumnModel();
		tcmOculta.getColumn(0).setMinWidth(0);
		tcmOculta.getColumn(0).setPreferredWidth(0);
		tcmOculta.getColumn(0).setMaxWidth(0);

		TableColumnModel tcm = tabelaAlunos.getColumnModel();
		tcm.getColumn(0);
		tcm.getColumn(1);

		DefaultTableModel dfm = (DefaultTableModel) tabelaAlunos.getModel();
		dfm.setNumRows(0);

	    lista = alunos;
		Collections.sort(lista);

		for (int i = 0; i < lista.size(); i++) {
			dfm.addRow(new String[] { 
					lista.get(i).getAlunCod().toString(),
					lista.get(i).getAlunNome()
			});
		}

		if (!lista.isEmpty() && lista.listIterator().nextIndex() == 0) {
			linhaSelecionada = lista.listIterator().nextIndex();
			//setAlunDtcadastro(lista.get(0).getAlunDtcadastro());
			textNomeAlun.setText(lista.get(0).getAlunNome());
			lblFoto.setIcon(lista.get(0).getAlunFoto() !=  null ? new ImageIcon(lista.get(0).getAlunFoto()) : new ImageIcon(getClass().getResource("/imagens/semFoto.png")));
			cmbSexoAlun.setSelectedItem(lista.get(0).getAlunSexo());
			fTextNascAlun.setText(lista.get(0).getAlunDn() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(lista.get(0).getAlunDn())));
			cmbNacAlun.setSelectedItem(lista.get(0).getAlunNacionalidade());
			textNatAlun.setText(lista.get(0).getAlunNaturalidade());
			cmbRelAlun.setSelectedItem(lista.get(0).getAlunReligiao());
			fTextTelResidAlun.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getAlunTel1())));
			fTextTelCelAlun.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getAlunTel2())));
			textEndAlun.setText(lista.get(0).getAlunEndereco());
			textBairroAlun.setText(lista.get(0).getAlunBairro());
			textCidadeAlun.setText(lista.get(0).getAlunCidade());
			fTextCepAlun.setText(Uteis.retornaNumeros(lista.get(0).getAlunCep()));
			cmbEstadoAlun.setSelectedItem(lista.get(0).getAlunUf());
			textProbSaudeAlun.setText(lista.get(0).getAlunSaude());
			textMedProibAlun.setText(lista.get(0).getAlunMedproibido());
			textMedUtilAlun.setText(lista.get(0).getAlunMedutilizado());
			textNomePai.setText(lista.get(0).getAlunNomepai());
			fTextNascPai.setText(lista.get(0).getAlunDnpai() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(lista.get(0).getAlunDnpai())));
			cmbNacPai.setSelectedItem(lista.get(0).getAlunNacionalidadepai());
			textNatPai.setText(lista.get(0).getAlunNaturalidadepai());
			textRgPai.setText(lista.get(0).getAlunRgpai());
			fTextCpfPai.setText(Uteis.retornaNumeros(lista.get(0).getAlunCpfpai()));
			fTextTelPai.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getAlunTel1pai())));
			fTextCelPai.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getAlunTel2pai())));
			fTextTelTrabPai.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getAlunTel3pai())));
			textLocTrabPai.setText(lista.get(0).getAlunTel3pai());
			cmbProfPai.setSelectedItem(lista.get(0).getAlunProfissaopai());
			fTextRendaPai.setText(lista.get(0).getAlunRendapai() == null ? "0,00" : String.format("%.2f", lista.get(0).getAlunRendapai()).replace(".", ","));
			textEndPai.setText(lista.get(0).getAlunEnderecopai());
			textBairroPai.setText(lista.get(0).getAlunBairropai());
			textCidadePai.setText(lista.get(0).getAlunCidadepai());
			fTextCepPai.setText(Uteis.retornaNumeros(lista.get(0).getAlunCeppai()));
			cmbUfPai.setSelectedItem(lista.get(0).getAlunUfpai());
			textNomeMae.setText(lista.get(0).getAlunNomemae());
			fTextNascMae.setText(lista.get(0).getAlunDnmae() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(lista.get(0).getAlunDnmae())));
			cmbNacMae.setSelectedItem(lista.get(0).getAlunNacionalidademae());
			textNatMae.setText(lista.get(0).getAlunNaturalidademae());
			textRgMae.setText(lista.get(0).getAlunRgmae());
			fTextCpfMae.setText(Uteis.retornaNumeros(lista.get(0).getAlunCpfmae()));
			fTextTelMae.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getAlunTel1mae())));
			fTextCelMae.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getAlunTel2mae())));
			fTextTelTrabMae.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(lista.get(0).getAlunTel3mae())));
			cmbProfMae.setSelectedItem(lista.get(0).getAlunProfissaomae());
			fTextRendaMae.setText(lista.get(0).getAlunRendamae() == null ? "0,00" : String.format("%.2f", lista.get(0).getAlunRendamae()).replace(".", ","));
			textEndMae.setText(lista.get(0).getAlunEnderecomae());
			textBairroMae.setText(lista.get(0).getAlunBairromae());
			textCidadeMae.setText(lista.get(0).getAlunCidademae());
			fTextCepMae.setText(Uteis.retornaNumeros(lista.get(0).getAlunCepmae()));
			cmbEstadoMae.setSelectedItem(lista.get(0).getAlunUfmae());
			textNatMae.setText(lista.get(0).getAlunUfnaturalidade());
			textRgAlun.setText(lista.get(0).getAlunRg());
			textOrgEmisAlun.setText(lista.get(0).getAlunRgOrgao());
			fTextRgDtEmisAlun.setText(lista.get(0).getAlunRgEmissao() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(lista.get(0).getAlunRgEmissao())));
			cmbRgEmisUfAlun.setSelectedItem(lista.get(0).getAlunRgUf());
			cmbCertCivilAlun.setSelectedItem(lista.get(0).getAlunCert());
			textTermoDocAlun.setText(lista.get(0).getAlunCertTermo());
			textFolhaDocAlun.setText(lista.get(0).getAlunCertFolha());
			textLivroDocAlun.setText(lista.get(0).getAlunCertLivro());
			fTextDtEmisDocAlun.setText(lista.get(0).getAlunCertEmissao() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(lista.get(0).getAlunCertEmissao())));
			textCartDocAlun.setText(lista.get(0).getAlunCertCartorio());
			cmbEstadoCartDocAlun.setSelectedItem(lista.get(0).getAlunCertCartUf());
			textDocEstrangeiroAlun.setText(lista.get(0).getAlunDocPassaporte());
			textEndCompAlun.setText(lista.get(0).getAlunEndComp());
			textNisAlun.setText(lista.get(0).getAlunNis());
			cmbCorRaca.setSelectedItem(lista.get(0).getAlunCor());
			cmbEspecialAlun.setSelectedItem(lista.get(0).getAlunEspecial());
			cmbSituacaoAlun.setSelectedItem(lista.get(0).getAlunCadastro());
			textEmailAlun.setText(lista.get(0).getAlunEmail());
			pTextSenhaAlun.setText(lista.get(0).getAlunSenha());
			aTextObs.setText(lista.get(0).getAlunObservacoes());
			/* ---------------------------------RESPONSAVEL---------------------------------- */
			responsavel = lista.get(0).getResponsavel();
			//
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
	
	private void tabelaMouseClicked(MouseEvent evt) {
		linhaSelecionada = tabelaAlunos.getSelectedRow();
		if (!lista.isEmpty()) {
			preencheCampos(linhaSelecionada);
			
			//duplo clique
			if (evt.getClickCount() == 2)  
	        {  
				tPaneAluno.setSelectedIndex(0); 
	        }  
		}
	}
	
	private void preencheCampos(Integer posicao) {
		aluno = lista.get(posicao);

		if (aluno != null) {
			// setAlunDtcadastro(aluno.getAlunDtcadastro());
			textNomeAlun.setText(aluno.getAlunNome());
			lblFoto.setIcon(aluno.getAlunFoto() !=  null ? new ImageIcon(aluno.getAlunFoto()) : new ImageIcon(getClass().getResource("/imagens/semFoto.png")));
			cmbSexoAlun.getModel().setSelectedItem(aluno.getAlunSexo());
			fTextNascAlun.setText(aluno.getAlunDn() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(aluno.getAlunDn())));
			cmbNacAlun.getModel().setSelectedItem(aluno.getAlunNacionalidade());
			textNatAlun.setText(aluno.getAlunNaturalidade());
			cmbRelAlun.getModel().setSelectedItem(aluno.getAlunReligiao());
			fTextTelResidAlun.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(aluno.getAlunTel1())));
			fTextTelCelAlun.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(aluno.getAlunTel2())));
			textEndAlun.setText(aluno.getAlunEndereco());
			textBairroAlun.setText(aluno.getAlunBairro());
			textCidadeAlun.setText(aluno.getAlunCidade());
			fTextCepAlun.setText(Uteis.retornaNumeros(aluno.getAlunCep()));
			cmbEstadoAlun.getModel().setSelectedItem(aluno.getAlunUf());
			textProbSaudeAlun.setText(aluno.getAlunSaude());
			textMedProibAlun.setText(aluno.getAlunMedproibido());
			textMedUtilAlun.setText(aluno.getAlunMedutilizado());
			textNomePai.setText(aluno.getAlunNomepai());
			fTextNascPai.setText(aluno.getAlunDnpai() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(aluno.getAlunDnpai())));
			cmbNacPai.getModel().setSelectedItem(aluno.getAlunNacionalidadepai());
			textNatPai.setText(aluno.getAlunNaturalidadepai());
			textRgPai.setText(aluno.getAlunRgpai());
			fTextCpfPai.setText(Uteis.retornaNumeros(aluno.getAlunCpfpai()));
			fTextTelPai.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(aluno.getAlunTel1pai())));
			fTextCelPai.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(aluno.getAlunTel2pai())));
			fTextTelTrabPai.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(aluno.getAlunTel3pai())));
			textLocTrabPai.setText(aluno.getAlunTrabalhopai());
			cmbProfPai.getModel().setSelectedItem(aluno.getAlunProfissaopai());
			fTextRendaPai.setText(aluno.getAlunRendapai() == null ? "0,00" : String.format("%.2f", aluno.getAlunRendapai()).replace(".", ","));
			textEndPai.setText(aluno.getAlunEnderecopai());
			textBairroPai.setText(aluno.getAlunBairropai());
			textCidadePai.setText(aluno.getAlunCidadepai());
			fTextCepPai.setText(Uteis.retornaNumeros(aluno.getAlunCeppai()));
			cmbUfPai.getModel().setSelectedItem(aluno.getAlunUfpai());
			textNomeMae.setText(aluno.getAlunNomemae());
			fTextNascMae.setText(aluno.getAlunDnmae() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(aluno.getAlunDnmae())));
			cmbNacMae.getModel().setSelectedItem(aluno.getAlunNacionalidademae());
			textNatMae.setText(aluno.getAlunNaturalidademae());
			textRgMae.setText(aluno.getAlunRgmae());
			fTextCpfMae.setText(Uteis.retornaNumeros(aluno.getAlunCpfmae()));
			fTextTelMae.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(aluno.getAlunTel1mae())));
			fTextCelMae.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(aluno.getAlunTel2mae())));
			fTextTelTrabMae.setText(Uteis.ajustaDddTelefone(Uteis.retornaNumeros(aluno.getAlunTel3mae())));
			cmbProfMae.getModel().setSelectedItem(aluno.getAlunProfissaomae());
			fTextRendaMae.setText(aluno.getAlunRendamae() == null ? "0,00" : String.format("%.2f", aluno.getAlunRendamae()).replace(".", ","));
			textEndMae.setText(aluno.getAlunEnderecomae());
			textBairroMae.setText(aluno.getAlunBairromae());
			textCidadeMae.setText(aluno.getAlunCidademae());
			fTextCepMae.setText(Uteis.retornaNumeros(aluno.getAlunCepmae()));
			cmbEstadoMae.getModel().setSelectedItem(aluno.getAlunUfmae());
			textNatMae.setText(aluno.getAlunUfnaturalidade());
			textRgAlun.setText(aluno.getAlunRg());
			textOrgEmisAlun.setText(aluno.getAlunRgOrgao());
			fTextRgDtEmisAlun.setText(aluno.getAlunRgEmissao() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(aluno.getAlunRgEmissao())));
			cmbRgEmisUfAlun.getModel().setSelectedItem(aluno.getAlunRgUf());
			cmbCertCivilAlun.getModel().setSelectedItem(aluno.getAlunCert());
			textTermoDocAlun.setText(aluno.getAlunCertTermo());
			textFolhaDocAlun.setText(aluno.getAlunCertFolha());
			textLivroDocAlun.setText(aluno.getAlunCertLivro());
			fTextDtEmisDocAlun.setText(aluno.getAlunCertEmissao() == null ? "" : Uteis.retornaNumeros(new SimpleDateFormat("dd/MM/yyyy").format(aluno.getAlunCertEmissao())));
			textCartDocAlun.setText(aluno.getAlunCertCartorio());
			cmbEstadoCartDocAlun.getModel().setSelectedItem(aluno.getAlunCertCartUf());
			textDocEstrangeiroAlun.setText(aluno.getAlunDocPassaporte());
			textEndCompAlun.setText(aluno.getAlunEndComp());
			textNisAlun.setText(aluno.getAlunNis());
			cmbCorRaca.getModel().setSelectedItem(aluno.getAlunCor());
			cmbEspecialAlun.getModel().setSelectedItem(aluno.getAlunEspecial());
			cmbSituacaoAlun.getModel().setSelectedItem(aluno.getAlunCadastro());
			textEmailAlun.setText(aluno.getAlunEmail());
			pTextSenhaAlun.setText(aluno.getAlunSenha());
			aTextObs.setText(aluno.getAlunObservacoes());
			/* ---------------------------------RESPONSAVEL---------------------------------- */
			responsavel = aluno.getResponsavel();
			//
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
		senhaAnterior = aluno.getAlunSenha();
		alunoAnterior = aluno.getAlunNome();
	}
	
	private String gerarSenha() {
		if (textNomeAlun.getText().trim().length() == 0) {
			JOptionPane.showMessageDialog(null,"Informe o campo: Nome aluno", "Aviso",JOptionPane.WARNING_MESSAGE, null);
			textNomeAlun.requestFocusInWindow();
			return "";
		}
		if (fTextNascAlun.getText().toString().trim().length() < 10) {
			JOptionPane.showMessageDialog(null,"Informe o campo: Nascimento", "Aviso",JOptionPane.WARNING_MESSAGE, null);
			fTextNascAlun.requestFocusInWindow();
			return "";
		}
		
		return Uteis.senhaAlphaNumeric(Uteis.retornaNumeros(fTextNascAlun.getText()).concat(textNomeAlun.getText().trim().replace(".", "").replace(" ", "").toLowerCase()), 6);
	}
}
