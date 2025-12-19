package com.app.employee_app.service;

import com.app.employee_app.model.Employee;
import com.app.employee_app.repository.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import java.util.List;
@Configuration
public class EmployeeService {


    @Autowired
    private EmployeeRepo employeeRepo;

    public List<Employee> getAllEmployees() {
        return employeeRepo.findAll();
    }

    public void add() {
        employeeRepo.save(new Employee(0,"John Doe",30));
    }

}
