/*
 * (c) Copyright 2001-2012 RWD, http://www.rwd.net.br
 * Codigo escrito por Erivando Ramos
 */

package br.net.rwd.sisescola.entidade;

import static javax.persistence.TemporalType.DATE;

import java.io.IOException;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;

import org.hibernate.annotations.Type;
import org.hibernate.util.SerializationHelper;
import org.hibernate.validator.constraints.Email;

@Entity
@Table(name = "aluno")
// @Cache(usage = NONSTRICT_READ_WRITE)
public class Aluno implements Serializable, Comparable<Aluno> {
	private static final long serialVersionUID = 1L;
	// private static final Logger log = Logger.getLogger(Aluno.class);

	// attributes
	@Column(name = "alun_cod")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private Integer alunCod;
	
	@Column(name = "alun_dtcadastro")
	@Temporal(DATE)
	private Date alunDtcadastro;
	
	@Column(name = "alun_nome")
	private String alunNome;
	
	@Lob 
	@Type(type="org.hibernate.type.BinaryType") 
	@Basic(fetch = FetchType.LAZY)
	@Column(name = "alun_foto")
	private byte[] alunFoto;
	
	@Column(name = "alun_sexo")
	private String alunSexo;
	
	@Column(name = "alun_dn")
	@Temporal(DATE)
	private Date alunDn;
	
	@Column(name = "alun_nacionalidade")
	private String alunNacionalidade;
	
	@Column(name = "alun_naturalidade")
	private String alunNaturalidade;
	
	@Column(name = "alun_religiao")
	private String alunReligiao;
	
	@Column(name = "alun_tel1")
	private String alunTel1;
	
	@Column(name = "alun_tel2")
	private String alunTel2;
	
	@Column(name = "alun_endereco")
	private String alunEndereco;
	
	@Column(name = "alun_bairro")
	private String alunBairro;
	
	@Column(name = "alun_cidade")
	private String alunCidade;
	
	@Column(name = "alun_cep")
	private String alunCep;
	
	@Column(name = "alun_uf")
	private String alunUf;
	
	@Column(name = "alun_saude")
	private String alunSaude;
	
	@Column(name = "alun_medproibido")
	private String alunMedproibido;
	
	@Column(name = "alun_medutilizado")
	private String alunMedutilizado;
	
	@Column(name = "alun_nomepai")
	private String alunNomepai;
	
	@Column(name = "alun_dnpai")
	@Temporal(DATE)
	private Date alunDnpai;
	
	@Column(name = "alun_nacionalidadepai")
	private String alunNacionalidadepai;
	
	@Column(name = "alun_naturalidadepai")
	private String alunNaturalidadepai;
	
	@Column(name = "alun_rgpai")
	private String alunRgpai;
	
	@Column(name = "alun_cpfpai")
	private String alunCpfpai;
	
	@Column(name = "alun_tel1pai")
	private String alunTel1pai;
	
	@Column(name = "alun_tel2pai")
	private String alunTel2pai;
	
	@Column(name = "alun_tel3pai")
	private String alunTel3pai;
	
	@Column(name = "alun_trabalhopai")
	private String alunTrabalhopai;
	
	@Column(name = "alun_profissaopai")
	private String alunProfissaopai;
	
	@Column(name = "alun_rendapai")
	private Float alunRendapai;
	
	@Column(name = "alun_enderecopai")
	private String alunEnderecopai;
	
	@Column(name = "alun_bairropai")
	private String alunBairropai;
	
	@Column(name = "alun_cidadepai")
	private String alunCidadepai;
	
	@Column(name = "alun_ceppai")
	private String alunCeppai;
	
	@Column(name = "alun_ufpai")
	private String alunUfpai;
	
	@Column(name = "alun_nomemae")
	private String alunNomemae;
	
	@Column(name = "alun_dnmae")
	@Temporal(DATE)
	private Date alunDnmae;
	
	@Column(name = "alun_nacionalidademae")
	private String alunNacionalidademae;
	
	@Column(name = "alun_naturalidademae")
	private String alunNaturalidademae;
	
	@Column(name = "alun_rgmae")
	private String alunRgmae;
	
	@Column(name = "alun_cpfmae")
	private String alunCpfmae;
	
	@Column(name = "alun_tel1mae")
	private String alunTel1mae;
	
	@Column(name = "alun_tel2mae")
	private String alunTel2mae;
	
	@Column(name = "alun_tel3mae")
	private String alunTel3mae;
	
	@Column(name = "alun_trabalhomae")
	private String alunTrabalhomae;
	
	@Column(name = "alun_profissaomae")
	private String alunProfissaomae;
	
	@Column(name = "alun_rendamae")
	private Float alunRendamae;
	
	@Column(name = "alun_enderecomae")
	private String alunEnderecomae;
	
	@Column(name = "alun_bairromae")
	private String alunBairromae;
	
	@Column(name = "alun_cidademae")
	private String alunCidademae;
	
	@Column(name = "alun_cepmae")
	private String alunCepmae;
	
	@Column(name = "alun_ufmae")
	private String alunUfmae;
	
	@Column(name = "alun_ufnaturalidade")
	private String alunUfnaturalidade;
	
	@Column(name = "alun_rg")
	private String alunRg;
	
    @Column(name = "alun_rg_orgao")
    private String alunRgOrgao;
	
	@Column(name = "alun_rg_emissao")
    @Temporal(DATE)
    private Date alunRgEmissao;
	
    @Column(name = "alun_rg_uf")
    private String alunRgUf;
	
    @Column(name = "alun_cert")
    private String alunCert;
	
    @Column(name = "alun_cert_termo")
    private String alunCertTermo;
	
    @Column(name = "alun_cert_folha")
    private String alunCertFolha;

    @Column(name = "alun_cert_livro")
    private String alunCertLivro;
	
	@Column(name = "alun_cert_emissao")
    @Temporal(DATE)
    private Date alunCertEmissao;
	
    @Column(name = "alun_cert_cartorio")
    private String alunCertCartorio;
	
    @Column(name = "alun_cert_cart_uf")
    private String alunCertCartUf;
	
    @Column(name = "alun_doc_passaporte")
    private String alunDocPassaporte;
	
    @Column(name = "alun_end_comp")
    private String alunEndComp;
	
    @Column(name = "alun_nis")
    private String alunNis;
	
    @Column(name = "alun_cor")
    private String alunCor;
	
    @Column(name = "alun_especial")
    private String alunEspecial;
	
    @Column(name = "alun_cadastro")
    private String alunCadastro;
	
    @Email
    @Column(name = "alun_email")
    private String alunEmail;
	
    @Column(name = "alun_senha")
    private String alunSenha;
	
    @Column(name = "alun_observacoes")
    private String alunObservacoes;

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	// many-to-one: Aluno.instCod ==> Instituicao.instCod
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	@JoinColumn(name = "inst_cod")
	@ManyToOne
	private Instituicao instituicao;

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	// many-to-one: Aluno.respCod ==> Responsavel.respCod
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	@JoinColumn(name = "resp_cod")
	@ManyToOne
	private Responsavel responsavel;

	// ---------------------------
	// Constructors
	// ---------------------------

	public Aluno() {
	}

	public Aluno(Integer alunCod) {
		super();
		this.alunCod = alunCod;
	}

	// -------------------------------
	// Getter & Setter
	// -------------------------------

	// -- [alunCod] ------------------------
	public Integer getAlunCod() {
		return alunCod;
	}

	public void setAlunCod(Integer alunCod) {
		this.alunCod = alunCod;
	}

	// -- [alunDtcadastro] ------------------------
	public Date getAlunDtcadastro() {
		return alunDtcadastro;
	}

	public void setAlunDtcadastro(Date alunDtcadastro) {
		this.alunDtcadastro = alunDtcadastro;
	}

	// -- [alunNome] ------------------------
	public String getAlunNome() {
		return alunNome;
	}

	public void setAlunNome(String alunNome) {
		this.alunNome = alunNome;
	}

	// -- [alunFoto] ------------------------
	public byte[] getAlunFoto() {
		return alunFoto;
	}

	public void setAlunFoto(byte[] alunFoto) {
		this.alunFoto = alunFoto;
	}

	@Transient
	public Object getObjectDeserialized() throws IOException, ClassNotFoundException {
	    if(this.alunFoto == null)
	        return new String(); // or another type
	    return SerializationHelper.deserialize(this.alunFoto);
	}

	@Transient
	public void setObject(Object obj) throws IOException {
	    if(obj != null)
	        this.alunFoto = SerializationHelper.serialize((Serializable) obj);
	}

	// -- [alunSexo] ------------------------
	public String getAlunSexo() {
		return alunSexo;
	}

	public void setAlunSexo(String alunSexo) {
		this.alunSexo = alunSexo;
	}

	// -- [alunDn] ------------------------
	public Date getAlunDn() {
		return alunDn;
	}

	public void setAlunDn(Date alunDn) {
		this.alunDn = alunDn;
	}

	// -- [alunNacionalidade] ------------------------
	public String getAlunNacionalidade() {
		return alunNacionalidade;
	}

	public void setAlunNacionalidade(String alunNacionalidade) {
		this.alunNacionalidade = alunNacionalidade;
	}

	// -- [alunNaturalidade] ------------------------
	public String getAlunNaturalidade() {
		return alunNaturalidade;
	}

	public void setAlunNaturalidade(String alunNaturalidade) {
		this.alunNaturalidade = alunNaturalidade;
	}

	// -- [alunReligiao] ------------------------
	public String getAlunReligiao() {
		return alunReligiao;
	}

	public void setAlunReligiao(String alunReligiao) {
		this.alunReligiao = alunReligiao;
	}

	// -- [alunTel1] ------------------------
	public String getAlunTel1() {
		return alunTel1;
	}

	public void setAlunTel1(String alunTel1) {
		this.alunTel1 = alunTel1;
	}

	// -- [alunTel2] ------------------------
	public String getAlunTel2() {
		return alunTel2;
	}

	public void setAlunTel2(String alunTel2) {
		this.alunTel2 = alunTel2;
	}

	// -- [alunEndereco] ------------------------
	public String getAlunEndereco() {
		return alunEndereco;
	}

	public void setAlunEndereco(String alunEndereco) {
		this.alunEndereco = alunEndereco;
	}

	// -- [alunBairro] ------------------------
	public String getAlunBairro() {
		return alunBairro;
	}

	public void setAlunBairro(String alunBairro) {
		this.alunBairro = alunBairro;
	}

	// -- [alunCidade] ------------------------
	public String getAlunCidade() {
		return alunCidade;
	}

	public void setAlunCidade(String alunCidade) {
		this.alunCidade = alunCidade;
	}

	// -- [alunCep] ------------------------
	public String getAlunCep() {
		return alunCep;
	}

	public void setAlunCep(String alunCep) {
		this.alunCep = alunCep;
	}

	// -- [alunUf] ------------------------
	public String getAlunUf() {
		return alunUf;
	}

	public void setAlunUf(String alunUf) {
		this.alunUf = alunUf;
	}

	// -- [alunSaude] ------------------------
	public String getAlunSaude() {
		return alunSaude;
	}

	public void setAlunSaude(String alunSaude) {
		this.alunSaude = alunSaude;
	}

	// -- [alunMedproibido] ------------------------
	public String getAlunMedproibido() {
		return alunMedproibido;
	}

	public void setAlunMedproibido(String alunMedproibido) {
		this.alunMedproibido = alunMedproibido;
	}

	// -- [alunMedutilizado] ------------------------
	public String getAlunMedutilizado() {
		return alunMedutilizado;
	}

	public void setAlunMedutilizado(String alunMedutilizado) {
		this.alunMedutilizado = alunMedutilizado;
	}

	// -- [alunNomepai] ------------------------
	public String getAlunNomepai() {
		return alunNomepai;
	}

	public void setAlunNomepai(String alunNomepai) {
		this.alunNomepai = alunNomepai;
	}

	// -- [alunDnpai] ------------------------
	public Date getAlunDnpai() {
		return alunDnpai;
	}

	public void setAlunDnpai(Date alunDnpai) {
		this.alunDnpai = alunDnpai;
	}

	// -- [alunNacionalidadepai] ------------------------
	public String getAlunNacionalidadepai() {
		return alunNacionalidadepai;
	}

	public void setAlunNacionalidadepai(String alunNacionalidadepai) {
		this.alunNacionalidadepai = alunNacionalidadepai;
	}

	// -- [alunNaturalidadepai] ------------------------
	public String getAlunNaturalidadepai() {
		return alunNaturalidadepai;
	}

	public void setAlunNaturalidadepai(String alunNaturalidadepai) {
		this.alunNaturalidadepai = alunNaturalidadepai;
	}

	// -- [alunRgpai] ------------------------
	public String getAlunRgpai() {
		return alunRgpai;
	}

	public void setAlunRgpai(String alunRgpai) {
		this.alunRgpai = alunRgpai;
	}

	// -- [alunCpfpai] ------------------------
	public String getAlunCpfpai() {
		return alunCpfpai;
	}

	public void setAlunCpfpai(String alunCpfpai) {
		this.alunCpfpai = alunCpfpai;
	}

	// -- [alunTel1pai] ------------------------
	public String getAlunTel1pai() {
		return alunTel1pai;
	}

	public void setAlunTel1pai(String alunTel1pai) {
		this.alunTel1pai = alunTel1pai;
	}

	// -- [alunTel2pai] ------------------------
	public String getAlunTel2pai() {
		return alunTel2pai;
	}

	public void setAlunTel2pai(String alunTel2pai) {
		this.alunTel2pai = alunTel2pai;
	}

	// -- [alunTel3pai] ------------------------
	public String getAlunTel3pai() {
		return alunTel3pai;
	}

	public void setAlunTel3pai(String alunTel3pai) {
		this.alunTel3pai = alunTel3pai;
	}

	// -- [alunTrabalhopai] ------------------------
	public String getAlunTrabalhopai() {
		return alunTrabalhopai;
	}

	public void setAlunTrabalhopai(String alunTrabalhopai) {
		this.alunTrabalhopai = alunTrabalhopai;
	}

	// -- [alunProfissaopai] ------------------------
	public String getAlunProfissaopai() {
		return alunProfissaopai;
	}

	public void setAlunProfissaopai(String alunProfissaopai) {
		this.alunProfissaopai = alunProfissaopai;
	}

	// -- [alunRendapai] ------------------------
	public Float getAlunRendapai() {
		return alunRendapai;
	}

	public void setAlunRendapai(Float alunRendapai) {
		this.alunRendapai = alunRendapai;
	}

	// -- [alunEnderecopai] ------------------------
	public String getAlunEnderecopai() {
		return alunEnderecopai;
	}

	public void setAlunEnderecopai(String alunEnderecopai) {
		this.alunEnderecopai = alunEnderecopai;
	}

	// -- [alunBairropai] ------------------------
	public String getAlunBairropai() {
		return alunBairropai;
	}

	public void setAlunBairropai(String alunBairropai) {
		this.alunBairropai = alunBairropai;
	}

	// -- [alunCidadepai] ------------------------
	public String getAlunCidadepai() {
		return alunCidadepai;
	}

	public void setAlunCidadepai(String alunCidadepai) {
		this.alunCidadepai = alunCidadepai;
	}

	// -- [alunCeppai] ------------------------
	public String getAlunCeppai() {
		return alunCeppai;
	}

	public void setAlunCeppai(String alunCeppai) {
		this.alunCeppai = alunCeppai;
	}

	// -- [alunUfpai] ------------------------
	public String getAlunUfpai() {
		return alunUfpai;
	}

	public void setAlunUfpai(String alunUfpai) {
		this.alunUfpai = alunUfpai;
	}

	// -- [alunNomemae] ------------------------
	public String getAlunNomemae() {
		return alunNomemae;
	}

	public void setAlunNomemae(String alunNomemae) {
		this.alunNomemae = alunNomemae;
	}

	// -- [alunDnmae] ------------------------
	public Date getAlunDnmae() {
		return alunDnmae;
	}

	public void setAlunDnmae(Date alunDnmae) {
		this.alunDnmae = alunDnmae;
	}

	// -- [alunNacionalidademae] ------------------------
	public String getAlunNacionalidademae() {
		return alunNacionalidademae;
	}

	public void setAlunNacionalidademae(String alunNacionalidademae) {
		this.alunNacionalidademae = alunNacionalidademae;
	}

	// -- [alunNaturalidademae] ------------------------
	public String getAlunNaturalidademae() {
		return alunNaturalidademae;
	}

	public void setAlunNaturalidademae(String alunNaturalidademae) {
		this.alunNaturalidademae = alunNaturalidademae;
	}

	// -- [alunRgmae] ------------------------
	public String getAlunRgmae() {
		return alunRgmae;
	}

	public void setAlunRgmae(String alunRgmae) {
		this.alunRgmae = alunRgmae;
	}

	// -- [alunCpfmae] ------------------------
	public String getAlunCpfmae() {
		return alunCpfmae;
	}

	public void setAlunCpfmae(String alunCpfmae) {
		this.alunCpfmae = alunCpfmae;
	}

	// -- [alunTel1mae] ------------------------
	public String getAlunTel1mae() {
		return alunTel1mae;
	}

	public void setAlunTel1mae(String alunTel1mae) {
		this.alunTel1mae = alunTel1mae;
	}

	// -- [alunTel2mae] ------------------------
	public String getAlunTel2mae() {
		return alunTel2mae;
	}

	public void setAlunTel2mae(String alunTel2mae) {
		this.alunTel2mae = alunTel2mae;
	}

	// -- [alunTel3mae] ------------------------
	public String getAlunTel3mae() {
		return alunTel3mae;
	}

	public void setAlunTel3mae(String alunTel3mae) {
		this.alunTel3mae = alunTel3mae;
	}

	// -- [alunTrabalhomae] ------------------------
	public String getAlunTrabalhomae() {
		return alunTrabalhomae;
	}

	public void setAlunTrabalhomae(String alunTrabalhomae) {
		this.alunTrabalhomae = alunTrabalhomae;
	}

	// -- [alunProfissaomae] ------------------------
	public String getAlunProfissaomae() {
		return alunProfissaomae;
	}

	public void setAlunProfissaomae(String alunProfissaomae) {
		this.alunProfissaomae = alunProfissaomae;
	}

	// -- [alunRendamae] ------------------------
	public Float getAlunRendamae() {
		return alunRendamae;
	}

	public void setAlunRendamae(Float alunRendamae) {
		this.alunRendamae = alunRendamae;
	}

	// -- [alunEnderecomae] ------------------------
	public String getAlunEnderecomae() {
		return alunEnderecomae;
	}

	public void setAlunEnderecomae(String alunEnderecomae) {
		this.alunEnderecomae = alunEnderecomae;
	}

	// -- [alunBairromae] ------------------------
	public String getAlunBairromae() {
		return alunBairromae;
	}

	public void setAlunBairromae(String alunBairromae) {
		this.alunBairromae = alunBairromae;
	}

	// -- [alunCidademae] ------------------------
	public String getAlunCidademae() {
		return alunCidademae;
	}

	public void setAlunCidademae(String alunCidademae) {
		this.alunCidademae = alunCidademae;
	}

	// -- [alunCepmae] ------------------------
	public String getAlunCepmae() {
		return alunCepmae;
	}

	public void setAlunCepmae(String alunCepmae) {
		this.alunCepmae = alunCepmae;
	}

	// -- [alunUfmae] ------------------------
	public String getAlunUfmae() {
		return alunUfmae;
	}

	public void setAlunUfmae(String alunUfmae) {
		this.alunUfmae = alunUfmae;
	}

	// -- [alunUfnaturalidade] ------------------------
	public String getAlunUfnaturalidade() {
		return alunUfnaturalidade;
	}

	public void setAlunUfnaturalidade(String alunUfnaturalidade) {
		this.alunUfnaturalidade = alunUfnaturalidade;
	}

	// -- [alunRg] ------------------------
	public String getAlunRg() {
		return alunRg;
	}

	public void setAlunRg(String alunRg) {
		this.alunRg = alunRg;
	}
	
    // -- [alunRgOrgao] ------------------------
    public String getAlunRgOrgao() {
        return alunRgOrgao;
    }

    public void setAlunRgOrgao(String alunRgOrgao) {
        this.alunRgOrgao = alunRgOrgao;
    }

    // -- [alunRgEmissao] ------------------------
    public Date getAlunRgEmissao() {
        return alunRgEmissao;
    }

    public void setAlunRgEmissao(Date alunRgEmissao) {
        this.alunRgEmissao = alunRgEmissao;
    }

    // -- [alunRgUf] ------------------------
    public String getAlunRgUf() {
        return alunRgUf;
    }

    public void setAlunRgUf(String alunRgUf) {
        this.alunRgUf = alunRgUf;
    }

    // -- [alunCert] ------------------------
    public String getAlunCert() {
        return alunCert;
    }

    public void setAlunCert(String alunCert) {
        this.alunCert = alunCert;
    }

    // -- [alunCertTermo] ------------------------
    public String getAlunCertTermo() {
        return alunCertTermo;
    }

    public void setAlunCertTermo(String alunCertTermo) {
        this.alunCertTermo = alunCertTermo;
    }

    // -- [alunCertFolha] ------------------------
    public String getAlunCertFolha() {
        return alunCertFolha;
    }

    public void setAlunCertFolha(String alunCertFolha) {
        this.alunCertFolha = alunCertFolha;
    }

    // -- [alunCertLivro] ------------------------
    public String getAlunCertLivro() {
        return alunCertLivro;
    }

    public void setAlunCertLivro(String alunCertLivro) {
        this.alunCertLivro = alunCertLivro;
    }

    // -- [alunCertEmissao] ------------------------
    public Date getAlunCertEmissao() {
        return alunCertEmissao;
    }

    public void setAlunCertEmissao(Date alunCertEmissao) {
        this.alunCertEmissao = alunCertEmissao;
    }

    // -- [alunCertCartorio] ------------------------
    public String getAlunCertCartorio() {
        return alunCertCartorio;
    }

    public void setAlunCertCartorio(String alunCertCartorio) {
        this.alunCertCartorio = alunCertCartorio;
    }

    // -- [alunCertCartUf] ------------------------
    public String getAlunCertCartUf() {
        return alunCertCartUf;
    }

    public void setAlunCertCartUf(String alunCertCartUf) {
        this.alunCertCartUf = alunCertCartUf;
    }

    // -- [alunDocPassaporte] ------------------------
    public String getAlunDocPassaporte() {
        return alunDocPassaporte;
    }

    public void setAlunDocPassaporte(String alunDocPassaporte) {
        this.alunDocPassaporte = alunDocPassaporte;
    }

    // -- [alunEndComp] ------------------------
    public String getAlunEndComp() {
        return alunEndComp;
    }

    public void setAlunEndComp(String alunEndComp) {
        this.alunEndComp = alunEndComp;
    }

    // -- [alunNis] ------------------------
    public String getAlunNis() {
        return alunNis;
    }

    public void setAlunNis(String alunNis) {
        this.alunNis = alunNis;
    }

    // -- [alunCor] ------------------------
    public String getAlunCor() {
        return alunCor;
    }

    public void setAlunCor(String alunCor) {
        this.alunCor = alunCor;
    }
    
    // -- [alunEspecial] ------------------------
    public String getAlunEspecial() {
        return alunEspecial;
    }

    public void setAlunEspecial(String alunEspecial) {
        this.alunEspecial = alunEspecial;
    }

    // -- [alunCadastro] ------------------------
    public String getAlunCadastro() {
        return alunCadastro;
    }

    public void setAlunCadastro(String alunCadastro) {
        this.alunCadastro = alunCadastro;
    }

    // -- [alunEmail] ------------------------
    public String getAlunEmail() {
        return alunEmail;
    }

    public void setAlunEmail(String alunEmail) {
        this.alunEmail = alunEmail;
    }

    // -- [alunSenha] ------------------------
    public String getAlunSenha() {
        return alunSenha;
    }

    public void setAlunSenha(String alunSenha) {
        this.alunSenha = alunSenha;
    }

    // -- [alunObservacoes] ------------------------
    public String getAlunObservacoes() {
        return alunObservacoes;
    }

    public void setAlunObservacoes(String alunObservacoes) {
        this.alunObservacoes = alunObservacoes;
    }

	// -- [instituicao] ------------------------
	public Instituicao getInstituicao() {
		return instituicao;
	}

	public void setInstituicao(Instituicao instituicao) {
		this.instituicao = instituicao;
	}

	// -- [responsavel] ------------------------
	public Responsavel getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(Responsavel responsavel) {
		this.responsavel = responsavel;
	}

	/**
	 * Construct a readable string representation for this Aluno instance.
	 */
	@Override
	public String toString() {
		return this.alunNome.toString();
	}

	/**
	 * equals e hashCode
	 */

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((alunCod == null) ? 0 : alunCod.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Aluno other = (Aluno) obj;
		if (alunCod == null) {
			if (other.alunCod != null)
				return false;
		} else if (!alunCod.equals(other.alunCod))
			return false;
		return true;
	}

	@Override
	public int compareTo(Aluno arg0) {
		return alunNome.compareTo(arg0.getAlunNome());
	}

}