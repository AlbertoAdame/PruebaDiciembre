package pruebaDic.model;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="travels")
@IdClass(TravelsId.class)
public class Travels {
	
	@Id
	@ManyToOne
	@JoinColumn(name="iduser", insertable = false, updatable = false)
	private User user;
	
	@Id
	@ManyToOne
	@JoinColumn(name="idtravel", insertable = false, updatable = false)
	private Train train;
	
	private int seat;

	public Travels(User user, Train train, int seat) {
		super();
		this.user = user;
		this.train = train;
		this.seat = seat;
	}

	public Travels() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Train getTrain() {
		return train;
	}

	public void setTrain(Train train) {
		this.train = train;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	@Override
	public int hashCode() {
		return Objects.hash(train, user);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Travels other = (Travels) obj;
		return Objects.equals(train, other.train) && Objects.equals(user, other.user);
	}
	
	
	

}
