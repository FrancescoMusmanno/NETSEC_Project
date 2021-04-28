//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package progettonetsec.simulations.wirelessnetwork;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.node.inet.WirelessHost;
import inet.visualizer.integrated.IntegratedCanvasVisualizer;
//
// TODO auto-generated type
//

//NED FILE è QUELLO CHE SI OCCUPA DI TUTTO CIO CHE CONCERNE LA RETE CHE COLLEGHERA I DUE HOST
network WirelessNetwork //rete che collega 2 host (per il momento statici) tra di loro
{
    parameters:

        @display("bgb=600,600"); // il nostro playground è 600x600 metri
    submodules:
        visualizer: IntegratedCanvasVisualizer; //aggiunge semplicemente elementi grafici alla nostra simulazione
        configurator: Ipv4NetworkConfigurator { //assegna indirizzi IP ai nostri host
            @display("p=30,37");
        }
        radioMedium: <default("UnitDiskRadioMedium")> like IRadioMedium {// le simulazioni wireless su inet hanno bisogno del radiomedium perche rappresenta il mezzo condiviso in cui le comunicazioni avvengono

            @display("p=30,96");
        }
        //a questo punto ci mancano solo gli host
        hostA: WirelessHost {
            @display("p=50,172"); //lasciamo uno spazio di 400 metri tra i due host
        }
        hostB: WirelessHost {

            @display("p=450,172");
        }
}
