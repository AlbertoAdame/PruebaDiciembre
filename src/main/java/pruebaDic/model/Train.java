package pruebaDic.model;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="train")
public class Train {
	@Id 
	private int id;
	private String origin;
	@Column(name="final")
	private String finalStation;
	private double price;
	private LocalDate date;
	private int numbertickets;
	@OneToMany(mappedBy="train", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Travels> travels;
	
	
	public Train(int id, String origin, String finalStation, double price, LocalDate date, int numbertickets) {
		super();
		this.id = id;
		this.origin = origin;
		this.finalStation = finalStation;
		this.price = price;
		this.date = date;
		this.numbertickets = numbertickets;
	}
	public Train() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getFinalStation() {
		return finalStation;
	}
	public void setFinalStation(String finalStation) {
		this.finalStation = finalStation;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public int getNumbertickets() {
		return numbertickets;
	}
	public void setNumbertickets(int numbertickets) {
		this.numbertickets = numbertickets;
	}
	
	public List<Travels> getTravels() {
		return travels;
	}
	public void setTravels(List<Travels> travels) {
		this.travels = travels;
	}
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Train other = (Train) obj;
		return id == other.id;
	}

	
}
