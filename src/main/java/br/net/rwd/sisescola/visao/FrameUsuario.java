package br.net.rwd.sisescola.visao;

import java.awt.Color;
import java.awt.Component;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Collections;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumnModel;
import javax.swing.table.TableModel;

import br.net.rwd.sisescola.ApplicationContextProvider;
import br.net.rwd.sisescola.entidade.Usuario;
import br.net.rwd.sisescola.servico.UsuarioServico;
import br.net.rwd.sisescola.util.Criptografia;

public class FrameUsuario extends javax.swing.JInternalFrame {

	private static final long serialVersionUID = 1L;
	
    private UsuarioServico model = (UsuarioServico) (ApplicationContextProvider.getInstance()).getApplicationContext().getBean("usuarioServico");
	private List<Usuario> lista;
	private Usuario usuario;
	private int linhaSelecionada;
	private String usuarioAnterior;
	private String senhaAnterior;
	
	private JTextField textNome;
	private JTextField textUsuario;
	private JPasswordField ptextSenha;
	private JPasswordField ptextReSenha;
	private JTable tabelaUsuarios;
	private JScrollPane scroll;
	private JTextField textEmail;
	private JTextField textPesquisa;
		
	public FrameUsuario() {
		super();
		initGUI();
		carregaTabela(model.listarUsuarios());
	}
	
	private void initGUI() {
		try {
			getContentPane().setLayout(null);
			setSize(780, 540);
			setClosable(true);
			setTitle("Usuário");
			
			Component content = FramePrincipal.getInstancia().getContentPane();  
			int x = (content.getWidth() - getWidth()) / 2;  
			int y = (content.getHeight() - getHeight()) / 2;
			setLocation(x, y);
			
			JPanel panel_pesquisa = new JPanel();
			panel_pesquisa.setBorder(new TitledBorder(null, "Pesquisa", TitledBorder.LEADING, TitledBorder.TOP, null, null));
			panel_pesquisa.setBounds(30, 30, 704, 65);
			getContentPane().add(panel_pesquisa);
			panel_pesquisa.setLayout(null);
			
			JLabel lblNomePesquisa = new JLabel("Nome");
			lblNomePesquisa.setBounds(10, 28, 68, 14);
			panel_pesquisa.add(lblNomePesquisa);
			
			textPesquisa = new JTextField();
			textPesquisa.setBounds(88, 25, 506, 20);
			panel_pesquisa.add(textPesquisa);
			textPesquisa.setColumns(10);
			
			JButton btnLocalizar = new JButton("Localizar");
			btnLocalizar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					carregaTabela(model.listarLikeUsuario(textPesquisa.getText()));
				}
			});
			btnLocalizar.setBounds(605, 24, 89, 23);
			panel_pesquisa.add(btnLocalizar);
			
			JPanel panel_cadastro = new JPanel();
			panel_cadastro.setBorder(new TitledBorder(null, "Cadastro do Usu\u00E1rio", TitledBorder.LEADING, TitledBorder.TOP, null, null));
			panel_cadastro.setBounds(30, 100, 704, 182);
			getContentPane().add(panel_cadastro);
			panel_cadastro.setLayout(null);
			
			JLabel lblNome = new JLabel("Nome");
			lblNome.setBounds(10, 28, 27, 14);
			panel_cadastro.add(lblNome);
			
			textNome = new JTextField();
			textNome.setBounds(84, 25, 610, 20);
			panel_cadastro.add(textNome);
			textNome.setColumns(10);
			
			JLabel lblUsurio = new JLabel("Usuário");
			lblUsurio.setBounds(10, 90, 36, 14);
			panel_cadastro.add(lblUsurio);
			
			textUsuario = new JTextField();
			textUsuario.setBounds(84, 87, 152, 20);
			panel_cadastro.add(textUsuario);
			textUsuario.setColumns(10);
			
			JLabel lblSenha = new JLabel("Senha");
			lblSenha.setBounds(10, 121, 46, 14);
			panel_cadastro.add(lblSenha);
			
			ptextSenha = new JPasswordField();
			ptextSenha.setBounds(84, 118, 152, 20);
			panel_cadastro.add(ptextSenha);
			
			JLabel lblRepeteSenha = new JLabel("Repete Senha");
			lblRepeteSenha.setBounds(10, 152, 77, 14);
			panel_cadastro.add(lblRepeteSenha);
			
			ptextReSenha = new JPasswordField();
			ptextReSenha.setBounds(84, 149, 152, 20);
			panel_cadastro.add(ptextReSenha);
			
			JLabel lblEmail = new JLabel("E-mail");
			lblEmail.setBounds(10, 59, 36, 14);
			panel_cadastro.add(lblEmail);
			
			textEmail = new JTextField();
			textEmail.setColumns(10);
			textEmail.setBounds(84, 56, 305, 20);
			panel_cadastro.add(textEmail);
			
			JPanel panel_lista = new JPanel();
			panel_lista.setBorder(new TitledBorder(null, "Usu\u00E1rios Cadastrados", TitledBorder.LEADING, TitledBorder.TOP, null, null));
			panel_lista.setBounds(30, 289, 704, 155);
			getContentPane().add(panel_lista);
			panel_lista.setLayout(null);
			
			TableModel tabelaModel = new DefaultTableModel(new String[][] { {} }, new String[] { "Código", "Nome", "E-mail" });
			tabelaUsuarios = new JTable();
			tabelaUsuarios.addMouseListener(new MouseAdapter() {
				@Override
				public void mouseClicked(MouseEvent evt) {
					tabelaMouseClicked(evt);
				}
			});
			tabelaUsuarios.setModel(tabelaModel);
			tabelaUsuarios.setBounds(10, 25, 684, 119);
			panel_lista.add(tabelaUsuarios);
			
			scroll = new JScrollPane(tabelaUsuarios);
			panel_lista.add(scroll);
			scroll.setBounds(10, 25, 684, 119);

			JPanel panel_controles = new JPanel();
			panel_controles.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
			panel_controles.setBounds(30, 455, 704, 45);
			getContentPane().add(panel_controles);
			panel_controles.setLayout(null);
			
			JButton btnNovo = new JButton("Novo");
			btnNovo.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					
					usuario = new Usuario();
					textNome.setText("");
					textEmail.setText("");
					textUsuario.setText("");
					ptextSenha.setText("");
					ptextReSenha.setText("");
					
				}
			});
			btnNovo.setBounds(10, 11, 89, 23);
			panel_controles.add(btnNovo);
			
			JButton btnSalvar = new JButton("Salvar");
			btnSalvar.addActionListener(new ActionListener() {
				
				public void actionPerformed(ActionEvent arg0) {
					
					if (usuario == null) {
						JOptionPane.showMessageDialog(null, "Sem alterações", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						return;
					}
					
					usuario.setUsu_nome(textNome.getText().toUpperCase());
					usuario.setUsu_email(textEmail.getText().toLowerCase());
					usuario.setUsu_usuario(textUsuario.getText());
					usuario.setUsu_senha(ptextSenha.getText());
					
					if ("".equals(usuario.getUsu_nome().trim())) {
						JOptionPane.showMessageDialog(null, "Informe o nome completo", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						return;
					}
					if ("".equals(usuario.getUsu_email().trim())) {
						JOptionPane.showMessageDialog(null, "Informe o e-mail", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						return;
					}
					if ("".equals(usuario.getUsu_usuario().trim())) {
						JOptionPane.showMessageDialog(null, "Informe o nome de usuário", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						return;
					}
					
					if(senhaAnterior == null)
					if ("".equals(usuario.getUsu_senha().trim())) {
						JOptionPane.showMessageDialog(null, "Informe a senha", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						return;
					}
					
					if (!usuario.getUsu_senha().trim().equals(ptextReSenha.getText().trim())) {
						JOptionPane.showMessageDialog(null, "Senhas não conferem!", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
						return;
					}
					
					usuario.setUsu_senha(Criptografia.criptografarMD5(usuario.getUsu_senha()));
						
					if (usuario.getUsu_cod() == null || usuario.getUsu_cod().intValue() == 0) {
						
						if (model.selecionarUsuarioExistente(usuario.getUsu_usuario())) {
							JOptionPane.showMessageDialog(null, "Usuário existente! Informe outro.", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
							return;
						}
						usuario = model.incluirUsuario(usuario);
						
					} else {
						
						if (!textUsuario.getText().equalsIgnoreCase(usuarioAnterior)) 
							if (model.selecionarUsuarioExistente(usuario.getUsu_usuario())) {
								JOptionPane.showMessageDialog(null, "Usuário existente! Informe outro.", "Informação", JOptionPane.INFORMATION_MESSAGE, null);
								return;
							}
											
						if ("".equalsIgnoreCase(ptextSenha.getText()))
							usuario.setUsu_senha(senhaAnterior);
						
						model.alterarUsuario(usuario);
						
					}
					carregaTabela(model.listarUsuarios());
					senhaAnterior = null;
				}
			});
			btnSalvar.setBounds(103, 11, 89, 23);
			panel_controles.add(btnSalvar);
			
			JButton btnAlterar = new JButton("Alterar");
			btnAlterar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					
					int codigo = Integer.parseInt((String) tabelaUsuarios.getModel().getValueAt(linhaSelecionada, 0));
					usuario = model.selecionarUsuario(codigo);
					senhaAnterior = usuario.getUsu_senha();
					usuarioAnterior = usuario.getUsu_usuario();
					if (usuario != null) {
						textNome.setText(usuario.getUsu_nome());
						textEmail.setText(usuario.getUsu_email());
						textUsuario.setText(usuario.getUsu_usuario());
					}
					ptextSenha.setText("");
					ptextReSenha.setText("");
					
				}
			});
			btnAlterar.setBounds(196, 11, 89, 23);
			panel_controles.add(btnAlterar);
			
			JButton btnExcluir = new JButton("Excluir");
			btnExcluir.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					
					int i = linhaSelecionada;
					int retorno = JOptionPane.showConfirmDialog(null, "Tem certeza que deseja excluir?", "Exclusão", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null);
					if (i > -1 && retorno == 0) {
						model.excluirUsuario(model.obterEntidade(Usuario.class, Integer.parseInt((String) tabelaUsuarios.getModel().getValueAt(i, 0))));
						carregaTabela(model.listarUsuarios());
					}
					
				}
			});
			btnExcluir.setBounds(289, 11, 89, 23);
			panel_controles.add(btnExcluir);
			
			JButton btnPrimeiro = new JButton("|<");
			btnPrimeiro.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					if(!lista.isEmpty()) {
						int posicao = linhaSelecionada = 0;
						preencheCampos(posicao);
					}
				}
			});
			btnPrimeiro.setBounds(388, 11, 50, 23);
			panel_controles.add(btnPrimeiro);
			
			JButton btnAnterior = new JButton("<<");
			btnAnterior.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					if(!lista.isEmpty() && linhaSelecionada > 0) {
						int posicao = --linhaSelecionada;
						preencheCampos(posicao);
					}
				}
			});
			btnAnterior.setBounds(441, 11, 50, 23);
			panel_controles.add(btnAnterior);
			
			JButton btnProximo = new JButton(">>");
			btnProximo.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					if(!lista.isEmpty() && linhaSelecionada < (lista.size()) - 1) {
						int posicao = ++linhaSelecionada;
						preencheCampos(posicao);
					}
				}
			});
			btnProximo.setBounds(494, 11, 50, 23);
			panel_controles.add(btnProximo);
			
			JButton btnUltimo = new JButton(">|");
			btnUltimo.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					if(!lista.isEmpty()) {
						int posicao = linhaSelecionada = lista.size()-1;
						preencheCampos(posicao);
					}
				}
			});
			btnUltimo.setBounds(547, 11, 50, 23);
			panel_controles.add(btnUltimo);
			
			JButton btnFechar = new JButton("Fechar");
			btnFechar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					dispose();
				}
			});
			btnFechar.setBounds(605, 11, 89, 23);
			panel_controles.add(btnFechar);
			
			setVisible(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void carregaTabela(List<Usuario> usuarios) {
		TableColumnModel tcmOculta = tabelaUsuarios.getColumnModel();
		tcmOculta.getColumn(0).setMinWidth(0);
		tcmOculta.getColumn(0).setPreferredWidth(0);
		tcmOculta.getColumn(0).setMaxWidth(0);

		TableColumnModel tcm = tabelaUsuarios.getColumnModel();
		tcm.getColumn(0);
		tcm.getColumn(1);
		tcm.getColumn(2);

		DefaultTableModel dfm = (DefaultTableModel) tabelaUsuarios.getModel();
		dfm.setNumRows(0);

	    lista = usuarios;
		Collections.sort(lista);

		for (int i = 0; i < lista.size(); i++) {
			dfm.addRow(new String[] { 
					lista.get(i).getUsu_cod().toString(),
					lista.get(i).getUsu_nome(), 
					lista.get(i).getUsu_usuario(),
					lista.get(i).getUsu_email(),
					lista.get(i).getUsu_senha()
			});
		}

		if (!lista.isEmpty() && lista.listIterator().nextIndex() == 0) {
			linhaSelecionada = lista.listIterator().nextIndex();
			
			textNome.setText(lista.get(0).getUsu_nome());
			textEmail.setText(lista.get(0).getUsu_email());
			textUsuario.setText(lista.get(0).getUsu_usuario());
		}
		ptextSenha.setText("");
		ptextReSenha.setText("");
	}
	
	private void tabelaMouseClicked(MouseEvent evt) {
		linhaSelecionada = tabelaUsuarios.getSelectedRow();
		if (!lista.isEmpty()) {
			preencheCampos(linhaSelecionada);
		}
	}
	
	private void preencheCampos(int posicao) {
		usuario = lista.get(posicao);
		textNome.setText(usuario.getUsu_nome());
		textEmail.setText(usuario.getUsu_email());
		textUsuario.setText(usuario.getUsu_usuario());
		ptextSenha.setText("");
		ptextReSenha.setText("");
	}
	
}
