/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import beans.domain.Persona;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import org.apache.log4j.Logger;
import org.junit.After;
import static org.junit.Assert.assertTrue;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author alumno
 */
public class TestEntidadPersona {
    
    static EntityManagerFactory emf = null;
    static EntityManager em = null;
    static EntityTransaction et = null;
    Logger log = Logger.getLogger(TestEntidadPersona.class);
    
    
    
    public TestEntidadPersona() {
    }
    
    @BeforeClass
    public static void setUpClass() {
        emf = Persistence.createEntityManagerFactory("PersonaPU");
    }
    
    @Before
    public void setUp() {
        try{
            em = emf.createEntityManager();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    @Test
    public void testPersonaEntity(){
        System.out.println("Iniciando test Persona Entity con JPA");
        
        assertTrue(em != null);
        
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        
        //No se debe especificar el ID, ya que se genera en automatico
        Persona persona1 = new Persona("Pepin","Nieto","Larios","675345298","pepin@hotmail.es");
        
        log.debug("Objeto a persistir:"+persona1);
        
        em.persist(persona1);
        
        assertTrue(persona1.getId() != 0);
        
        tx.commit();
        
        log.debug("Objeto persistido: "+persona1);
        
        System.out.println("Fin text Persona Entity con JPA");
             
    }
    
    @After
    public void onClose() throws Exception{
        if(em!=null){
            em.close();
        }
    }
    
}
