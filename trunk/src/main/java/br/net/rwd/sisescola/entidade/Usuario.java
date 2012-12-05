package br.net.rwd.sisescola.entidade;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "usuarios")
public class Usuario implements Serializable, Comparable<Usuario> {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer usu_cod;
	private String usu_nome; 
	private String usu_email;
	private String usu_usuario;
	private String usu_senha;

	@ElementCollection(targetClass=String.class,fetch=FetchType.EAGER)
	@JoinTable(name="perfis",uniqueConstraints={@UniqueConstraint(columnNames={"usu_cod","per_role"})},joinColumns=@JoinColumn(name="usu_cod"))
	@Column(name="per_role",length=25)
	private Set<String> per_roles = new LinkedHashSet<String>();

	@ManyToMany(targetEntity=Perfil.class,fetch=FetchType.EAGER)
	@JoinTable(name = "perfis", joinColumns = @JoinColumn(name = "usu_cod"), inverseJoinColumns = @JoinColumn(name = "per_cod"))
	private List<Perfil> perfis = new ArrayList<Perfil>();
	
	public Usuario() {
		super();
	}

	public Integer getUsu_cod() {
		return usu_cod;
	}

	public void setUsu_cod(Integer usu_cod) {
		this.usu_cod = usu_cod;
	}

	public String getUsu_nome() {
		return usu_nome;
	}

	public void setUsu_nome(String usu_nome) {
		this.usu_nome = usu_nome;
	}

	public String getUsu_email() {
		return usu_email;
	}

	public void setUsu_email(String usu_email) {
		this.usu_email = usu_email;
	}

	public String getUsu_usuario() {
		return usu_usuario;
	}

	public void setUsu_usuario(String usu_usuario) {
		this.usu_usuario = usu_usuario;
	}

	public String getUsu_senha() {
		return usu_senha;
	}

	public void setUsu_senha(String usu_senha) {
		this.usu_senha = usu_senha;
	}

	public Set<String> getPer_roles() {
		return per_roles;
	}

	public void setPer_roles(Set<String> per_roles) {
		this.per_roles = per_roles;
	}

	public List<Perfil> getPerfis() {
		return perfis;
	}

	public void setPerfis(List<Perfil> perfis) {
		this.perfis = perfis;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((usu_cod == null) ? 0 : usu_cod.hashCode());
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
		final Usuario other = (Usuario) obj;
		if (usu_cod == null) {
			if (other.usu_cod != null)
				return false;
		} else if (!usu_cod.equals(other.usu_cod))
			return false;
		return true;
	}

	@Override
	public int compareTo(Usuario usuario) {
		return usu_cod.compareTo(usuario.getUsu_cod());
	}

}
