package com.bobata.ai.springboot.myfirstwebapp2.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

@Service
public class TodoService {
	
	
	private static List<Todo> todos = new ArrayList<>();
	
	private static int todoCount = 0;
	static {
		todos.add(new Todo(++todoCount,"in28minuites","Learn AWS 1",LocalDate.now().plusYears(1),false));
		todos.add(new Todo(++todoCount,"in28minuites","Learn Azure 1",LocalDate.now().plusYears(2),false));
		todos.add(new Todo(++todoCount,"in28minuites","Learn Python 1",LocalDate.now().plusYears(3),false));
	}
	
	public List<Todo> findByUsername(String username){
		Predicate<? super Todo> predicate = todo->todo.getUsername().equalsIgnoreCase(username);
		return todos.stream().filter(predicate).toList();
	}
	
	public void addTodo(String username,String desccription,LocalDate targetDate,boolean done) {
		Todo todo = new Todo(++todoCount,username,desccription,targetDate,done);
			todos.add(todo);
	}
	
	public void deleteById(int id) {
		//todo.getId()==Id
		//todo->todo.getId()==id
		Predicate<? super Todo> predicate = todo->todo.getId()==id;
		todos.removeIf(predicate);
	}
	
	public Todo findById(int id) {
		//todo.getId()==Id
		//todo->todo.getId()==id
		Predicate<? super Todo> predicate = todo->todo.getId()==id;
		Todo todo = todos.stream().filter(predicate).findFirst().get();
		return todo;
	}

	public void updateTodo(Todo todo) {
		// TODO Auto-generated method stub
		deleteById(todo.getId());
		todos.add(todo);
	}
}
