package pojo;

// Generated 13 Feb, 2023 4:39:29 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Instructors generated by hbm2java
 */
@Entity
@Table(name = "instructors", catalog = "driving_school")
public class Instructors implements java.io.Serializable {

	private Integer id;
	private String name;
	private String detail;
	private String profile;

	public Instructors() {
	}

	public Instructors(String name, String detail, String profile) {
		this.name = name;
		this.detail = detail;
		this.profile = profile;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", length = 60)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "detail", length = 100)
	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Column(name = "profile", length = 200)
	public String getProfile() {
		return this.profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

}