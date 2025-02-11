package sl.empleados.servicio;

import sl.empleados.modelo.Empleado;

import java.util.List;

public interface IEmpleadoServicio {
    public List<Empleado> mostrarEmpleados();

    public Empleado buscarEmpleadoPorID(Integer idEmpleado);

    public void guardarEmpleado(Empleado empleado);

    public void eliminarEmpleado(Empleado empleado);
}
