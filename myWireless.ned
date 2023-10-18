import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.contract.INetworkNode;
import inet.physicallayer.wireless.common.medium.RadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.node.contract.INetworkNode;
package inet.tutorials.wireless.myWireless;

network WirelessA1
{
    parameters:
        @display("bgb=650,500;bgg=100,1,grey95");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=hostR1.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            @display("p=583.632,278.208");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=583.632,352.80002");
        }
        radioMedium: RadioMedium {
            @display("p=583.632,427.392");
        }
        hostA: <default("WirelessHost")> like INetworkNode {
            @display("p=44.352,292.32");
        }
        hostB: <default("WirelessHost")> like INetworkNode {
            @display("p=419.328,404.208");
        }
        hostC: <default("WirelessHost")> like INetworkNode {
            @display("p=396.144,278.208");
        }
        hostD: <default("WirelessHost")> like INetworkNode {
            @display("p=458.64,58.464");
        }
        hostE: <default("WirelessHost")> like INetworkNode {
            @display("p=92.736,58.464");
        }
        hostF: <default("WirelessHost")> like INetworkNode {
            @display("p=77.616005,404.208");
        }
        hostG: <default("WirelessHost")> like INetworkNode {
            @display("p=260.064,404.208");
        }
        hostH: <default("WirelessHost")> like INetworkNode {
            @display("p=44.352,148.17601");
        }
        hostI: <default("WirelessHost")> like INetworkNode {
            @display("p=476.78403,160.272");
        }
        hostJ: <default("WirelessHost")> like INetworkNode {
            @display("p=282.24002,58.464");
        }

        hostR1: <default("WirelessHost")> like INetworkNode {
            @display("p=282.24002,238.89601");
        }
}
