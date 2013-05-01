/*
 * (c) Copyright 2001-2012 RWD, http://www.rwd.net.br
 * Codigo escrito por Erivando Ramos
 */

package br.net.rwd.sisescola.entidade;

import static javax.persistence.TemporalType.DATE;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Size;

@Entity
@Table(name = "responsavel")
public class Responsavel implements Serializable, Comparable<Responsavel> {
	private static final long serialVersionUID = 1L;

	// attributes
	private Integer respCod;
	private String respNome;
	private Date respDn;
	private String respNacionalidade;
	private String respNaturalidade;
	private String respRg;
	private String respCpf;
	private String respTel1;
	private String respTel2;
	private String respTel3;
	private String respLocaltrabalho;
	private String respProfissao;
	private Float respRenda;
	private String respEndereco;
	private String respBairro;
	private String respCidade;
	private String respCep;
	private String respUf;

	// ---------------------------
	// Constructors
	// ---------------------------

	public Responsavel() {
	}

	public Responsavel(Integer respCod) {
		super();
		this.respCod = respCod;
	}

	// -------------------------------
	// Getter & Setter
	// -------------------------------

	// -- [respCod] ------------------------

	@Column(name = "resp_cod")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	public Integer getRespCod() {
		return respCod;
	}

	public void setRespCod(Integer respCod) {
		this.respCod = respCod;
	}

	// -- [respNome] ------------------------

	@Size(max = 50)
	@Column(name = "resp_nome", length = 50)
	public String getRespNome() {
		return respNome;
	}

	public void setRespNome(String respNome) {
		this.respNome = respNome;
	}

	// -- [respDn] ------------------------

	@Column(name = "resp_dn", length = 13)
	@Temporal(DATE)
	public Date getRespDn() {
		return respDn;
	}

	public void setRespDn(Date respDn) {
		this.respDn = respDn;
	}

	// -- [respNacionalidade] ------------------------

	@Size(max = 25)
	@Column(name = "resp_nacionalidade", length = 25)
	public String getRespNacionalidade() {
		return respNacionalidade;
	}

	public void setRespNacionalidade(String respNacionalidade) {
		this.respNacionalidade = respNacionalidade;
	}

	// -- [respNaturalidade] ------------------------

	@Size(max = 25)
	@Column(name = "resp_naturalidade", length = 25)
	public String getRespNaturalidade() {
		return respNaturalidade;
	}

	public void setRespNaturalidade(String respNaturalidade) {
		this.respNaturalidade = respNaturalidade;
	}

	// -- [respRg] ------------------------

	@Size(max = 25)
	@Column(name = "resp_rg", length = 25)
	public String getRespRg() {
		return respRg;
	}

	public void setRespRg(String respRg) {
		this.respRg = respRg;
	}

	// -- [respCpf] ------------------------

	@Size(max = 14)
	@Column(name = "resp_cpf", length = 14)
	public String getRespCpf() {
		return respCpf;
	}

	public void setRespCpf(String respCpf) {
		this.respCpf = respCpf;
	}

	// -- [respTel1] ------------------------

	@Size(max = 20)
	@Column(name = "resp_tel1", length = 20)
	public String getRespTel1() {
		return respTel1;
	}

	public void setRespTel1(String respTel1) {
		this.respTel1 = respTel1;
	}

	// -- [respTel2] ------------------------

	@Size(max = 20)
	@Column(name = "resp_tel2", length = 20)
	public String getRespTel2() {
		return respTel2;
	}

	public void setRespTel2(String respTel2) {
		this.respTel2 = respTel2;
	}

	// -- [respTel3] ------------------------

	@Size(max = 20)
	@Column(name = "resp_tel3", length = 20)
	public String getRespTel3() {
		return respTel3;
	}

	public void setRespTel3(String respTel3) {
		this.respTel3 = respTel3;
	}

	// -- [respLocaltrabalho] ------------------------

	@Size(max = 30)
	@Column(name = "resp_localtrabalho", length = 30)
	public String getRespLocaltrabalho() {
		return respLocaltrabalho;
	}

	public void setRespLocaltrabalho(String respLocaltrabalho) {
		this.respLocaltrabalho = respLocaltrabalho;
	}

	// -- [respProfissao] ------------------------

	@Size(max = 30)
	@Column(name = "resp_profissao", length = 30)
	public String getRespProfissao() {
		return respProfissao;
	}

	public void setRespProfissao(String respProfissao) {
		this.respProfissao = respProfissao;
	}

	// -- [respRenda] ------------------------

	@Digits(integer = 18, fraction = 2)
	@Column(name = "resp_renda", precision = 18, scale = 2)
	public Float getRespRenda() {
		return respRenda;
	}

	public void setRespRenda(Float respRenda) {
		this.respRenda = respRenda;
	}

	// -- [respEndereco] ------------------------

	@Size(max = 50)
	@Column(name = "resp_endereco", length = 50)
	public String getRespEndereco() {
		return respEndereco;
	}

	public void setRespEndereco(String respEndereco) {
		this.respEndereco = respEndereco;
	}

	// -- [respBairro] ------------------------

	@Size(max = 30)
	@Column(name = "resp_bairro", length = 30)
	public String getRespBairro() {
		return respBairro;
	}

	public void setRespBairro(String respBairro) {
		this.respBairro = respBairro;
	}

	// -- [respCidade] ------------------------

	@Size(max = 25)
	@Column(name = "resp_cidade", length = 25)
	public String getRespCidade() {
		return respCidade;
	}

	public void setRespCidade(String respCidade) {
		this.respCidade = respCidade;
	}

	// -- [respCep] ------------------------

	@Size(max = 10)
	@Column(name = "resp_cep", length = 10)
	public String getRespCep() {
		return respCep;
	}

	public void setRespCep(String respCep) {
		this.respCep = respCep;
	}

	// -- [respUf] ------------------------

	@Size(max = 2)
	@Column(name = "resp_uf", length = 2)
	public String getRespUf() {
		return respUf;
	}

	public void setRespUf(String respUf) {
		this.respUf = respUf;
	}

	/**
	 * Construct a readable string representation for this Responsavel instance.
	 */
	@Override
	public String toString() {
		return this.getRespNome().toString();
	}

	/**
	 * equals e hashCode
	 */

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((respCod == null) ? 0 : respCod.hashCode());
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
		Responsavel other = (Responsavel) obj;
		if (respCod == null) {
			if (other.respCod != null)
				return false;
		} else if (!respCod.equals(other.respCod))
			return false;
		return true;
	}

	@Override
	public int compareTo(Responsavel arg0) {
		return respNome.compareTo(arg0.getRespNome());
	}

}