package sl.empleados.controlador;

import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import sl.empleados.modelo.Empleado;
import sl.empleados.servicio.EmpleadoServicio;

import java.util.List;

@Controller
public class IndexControlador {
    private static final Logger logger = LoggerFactory.getLogger(IndexControlador.class);

    @Autowired
    EmpleadoServicio empleadoServicio;

//    Se hace la llamada al jsp cuando se recargue la pagina siempre, permitiendo ejecutar el metodo mostrarEmpleados
    @RequestMapping(value ="/", method = RequestMethod.GET)
    public String iniciar(ModelMap modelo){
        List<Empleado> empleados = empleadoServicio.mostrarEmpleados();
        empleados.forEach(empleado -> logger.info(empleado.toString()));
        //compartir el modelo con la vista
        modelo.put("empleados", empleados);
        return "index";//index.jsp
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.GET)
    public String mostrarAgregar(){
        return "agregar";//agregar.jsp
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.POST)
    public String agregar(@ModelAttribute("empleadoForma") Empleado empleado, HttpServletRequest request){
        logger.info("Empleado a agregar: "+empleado);
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/"; //Redirige al path inicial
    }

    @RequestMapping(value = "/editar", method = RequestMethod.GET)
    public String mostrarEditar(@RequestParam int idEmpleado, ModelMap modelo){
        Empleado empleado = empleadoServicio.buscarEmpleadoPorID(idEmpleado);
        logger.info("Empleado a editar: "+ empleado);
        modelo.put("empleado", empleado);
        return "editar";//mostrar la pagiuna de editar.jsp
    }

    @RequestMapping(value = "/editar", method = RequestMethod.POST)
    public String editarEmpleado(@ModelAttribute("empleadoForma") Empleado empleado, HttpServletRequest request){
        logger.info("empleado a modificar"+empleado);
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/";
    }

    @RequestMapping(value = "/eliminar", method = RequestMethod.GET)
    public String eliminarEmpleado(@RequestParam int idEmpleado){
        Empleado empleado = empleadoServicio.buscarEmpleadoPorID(idEmpleado);
        logger.info("Empleado a eliminar: "+ empleado);
        empleado.setIdEmpleado(idEmpleado);
        empleadoServicio.eliminarEmpleado(empleado);
        return "redirect:/";
    }

}