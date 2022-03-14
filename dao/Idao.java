package dao;

import java.util.List;

public interface Idao <T>{
	
	public boolean create(T object);

	public List<T> read();
	
	public void update(T object);
	public void delete(T object);
	
	public T findById(int id);
	
	public T findByName(String nom);

}
