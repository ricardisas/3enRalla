package taulella;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Daniel i Ricard
 */
public class taulell {
    String taulell[][]; 
    String jugadors[];
    int contJugs;
    boolean win;
    int numTaulell;
    int torn;
    
    public taulell(int numT){
        taulell = new String[3][3];
        jugadors = new String[2];
        for(int i=0; i<3; i++){
            for(int j=0; j<3; j++){
                taulell[i][j]="";
            }
        }
        contJugs=0;
        numTaulell=numT;
        win=false;
        torn=1;
    }
    
    public void canviarTorn(){
        if(torn==1){
            torn=2;
        }
        else if(torn==2){
            torn=1;
        }
    }
    
    public String veureTorn(){
        return jugadors[torn-1];
    }
    
    public String estatCasella(int fil, int col){
        return taulell[fil][col];
    }
    
    public void casella(int fil, int col, int numJug){
        if(numJug == 1){
            taulell[col][fil]="X";
        }
        else{
            taulell[col][fil]="O";
        }
    }
    
    public int getNumTaulell(){
        return numTaulell;
    }
    
    public void setJugadors(String nom){
        if(contJugs==0){
            jugadors[0]=nom;
        }else{
            jugadors[1]=nom;
        }
        contJugs++;
    }
    
    public String getNomJug(int numJug){
        if(numJug == 1){
            return jugadors[0];
        }
        else{
            return jugadors[1];
        }
    }
    
    public int getJugadors(){
        return contJugs;
    }

    public boolean validarValors(){
        if(taulell[0][0].equals("")==false && taulell[0][0].equals(taulell[0][1]) && taulell[0][1].equals(taulell[0][2])){win=true;}
        else if(taulell[1][0].equals("")==false && taulell[1][0].equals(taulell[1][1]) && taulell[1][1].equals(taulell[1][2])){win=true;}
        else if(taulell[2][0].equals("")==false && taulell[2][0].equals(taulell[2][1]) && taulell[2][1].equals(taulell[2][2])){win=true;}
        else if(taulell[0][0].equals("")==false && taulell[0][0].equals(taulell[1][0]) && taulell[1][0].equals(taulell[2][0])){win=true;}
        else if(taulell[0][1].equals("")==false && taulell[0][1].equals(taulell[1][1]) && taulell[1][1].equals(taulell[2][1])){win=true;}
        else if(taulell[0][2].equals("")==false && taulell[0][2].equals(taulell[1][2]) && taulell[1][2].equals(taulell[2][2])){win=true;}
        else if(taulell[0][0].equals("")==false && taulell[0][0].equals(taulell[1][1]) && taulell[1][1].equals(taulell[2][2])){win=true;}
        else if(taulell[0][2].equals("")==false && taulell[0][2].equals(taulell[1][1]) && taulell[1][1].equals(taulell[2][0])){win=true;}
        return win;
    }
    /**
     * Borra el valor de totes les posicions del taulell
     */
    public void reset(){
        for(int i=0; i<3; i++){
            for(int j=0; j<3; j++){
                taulell[i][j]="";
            }
        }
        jugadors[0]="";
        jugadors[1]="";
        contJugs=0;
        win=false;
        torn=1;
    }
    
    public String estat(){
        String estat="";
        if(contJugs==2 && win){
            estat="Finalitzat";
        }
        else if(contJugs==2 && !win){
            estat="Ocupat";
        }
        else if(contJugs==1){
            estat="esperant contrincant";
        }
        else if(contJugs==0){
           estat="Inicialitzat";
        }
        return estat;
    }
}

    

