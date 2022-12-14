package pruebaDic.model;

import java.io.Serializable;

import java.util.Objects;

public class TravelsId implements Serializable {
	
	private String user;
	
	private int train;

	public TravelsId(String user, int train) {
		super();
		this.user = user;
		this.train = train;
	}

	public TravelsId() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public int getTrain() {
		return train;
	}

	public void setTrain(int train) {
		this.train = train;
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
		TravelsId other = (TravelsId) obj;
		return train == other.train && user == other.user;
	}
	
	
}
