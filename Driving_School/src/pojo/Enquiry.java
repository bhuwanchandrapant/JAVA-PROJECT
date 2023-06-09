package pojo;

// Generated 13 Feb, 2023 4:39:29 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Enquiry generated by hbm2java
 */
@Entity
@Table(name = "enquiry", catalog = "driving_school")
public class Enquiry implements java.io.Serializable {

	private Integer id;
	private String name;
	private String email;
	private String contact;
	private String date;
	private String coursetype;
	private String cartype;

	public Enquiry() {
	}

	public Enquiry(String name, String email, String contact, String date, String coursetype, String cartype) {
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.date = date;
		this.coursetype = coursetype;
		this.cartype = cartype;
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

	@Column(name = "email", length = 100)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "contact", length = 10)
	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	@Column(name = "date", length = 50)
	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Column(name = "coursetype", length = 100)
	public String getCoursetype() {
		return this.coursetype;
	}

	public void setCoursetype(String coursetype) {
		this.coursetype = coursetype;
	}

	@Column(name = "cartype", length = 100)
	public String getCartype() {
		return this.cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

}
