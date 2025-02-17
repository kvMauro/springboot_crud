package gm.sistemaEmpleados.repositorio;

import gm.sistemaEmpleados.modelo.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmpleadoRepositorio extends JpaRepository<Empleado, Integer> {
}
