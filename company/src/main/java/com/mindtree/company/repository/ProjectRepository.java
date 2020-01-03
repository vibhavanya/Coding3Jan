package com.mindtree.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.company.entity.Project;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Integer>  {

}
