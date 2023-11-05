/*
 * (c) Copyright 2001-2012 RWD, http://www.rwd.net.br
 * Codigo escrito por Erivando Ramos
 */

package br.net.rwd.sisescola.entidade;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "instituicao")
public class Instituicao implements Serializable {
	private static final long serialVersionUID = 1L;

	// attributes
	private Integer instCod;
	private String instNome;
	private String instCidade;
	private String instUf;

	// ---------------------------
	// Constructors
	// ---------------------------

	public Instituicao() {
	}

	public Instituicao(Integer instCod) {
		super();
		this.instCod = instCod;
	}

	// -------------------------------
	// Getter & Setter
	// -------------------------------

	// -- [instCod] ------------------------

	@Column(name = "inst_cod")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	public Integer getInstCod() {
		return instCod;
	}

	public void setInstCod(Integer instCod) {
		this.instCod = instCod;
	}

	// -- [instNome] ------------------------

	@Size(max = 50)
	@Column(name = "inst_nome", length = 50)
	public String getInstNome() {
		return instNome;
	}

	public void setInstNome(String instNome) {
		this.instNome = instNome;
	}

	// -- [instCidade] ------------------------

	@Size(max = 25)
	@Column(name = "inst_cidade", length = 25)
	public String getInstCidade() {
		return instCidade;
	}

	public void setInstCidade(String instCidade) {
		this.instCidade = instCidade;
	}

	// -- [instUf] ------------------------

	@Size(max = 2)
	@Column(name = "inst_uf", length = 2)
	public String getInstUf() {
		return instUf;
	}

	public void setInstUf(String instUf) {
		this.instUf = instUf;
	}

	/**
	 * Construct a readable string representation for this Instituicao instance.
	 */
	@Override
	public String toString() {
		return this.instNome.toString();
	}

	/**
	 * equals e hashCode
	 */

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((instCod == null) ? 0 : instCod.hashCode());
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
		Instituicao other = (Instituicao) obj;
		if (instCod == null) {
			if (other.instCod != null)
				return false;
		} else if (!instCod.equals(other.instCod))
			return false;
		return true;
	}

}