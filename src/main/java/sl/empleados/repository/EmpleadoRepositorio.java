package sl.empleados.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sl.empleados.modelo.Empleado;

public interface EmpleadoRepositorio extends JpaRepository<Empleado,Integer > {
}
