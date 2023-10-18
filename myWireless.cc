void StandardHost::handleMessage(cMessage *msg)
{
    if (msg->isSelfMessage()) {
        // Generate a new packet
        cPacket *packet = new cPacket("DataPacket");
        int packetBitLength = 2000; // Set the desired packet length in bits
        packet->setBitLength(packetBitLength);

        // Send the packet
        send(packet, "out");
    }
    EV << "Debug Message" << endl;
}

