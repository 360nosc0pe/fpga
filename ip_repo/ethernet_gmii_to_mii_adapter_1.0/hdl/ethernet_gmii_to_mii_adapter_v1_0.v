`timescale 1 ns / 1 ps

module ethernet_gmii_to_mii_adapter_v1_0
(
    input wire [7:0] GMII_TXD,
    input wire GMII_TX_EN,
    input wire GMII_TX_ER,
    output wire [7:0] GMII_RXD,
    output wire GMII_COL,
    output wire GMII_CRS,
    output wire GMII_RX_CLK,
    output wire GMII_RX_DV,
    output wire GMII_RX_ER,
    output wire GMII_TX_CLK,

    output wire [3:0] MII_TXD,
    output wire MII_TX_EN,
    input wire MII_COL,
    input wire MII_CRS,
    input wire [3:0] MII_RXD,
    input wire MII_RX_CLK,
    input wire MII_RX_DV,
    input wire MII_RX_ER,
    input wire MII_TX_CLK
);

    assign GMII_RXD = {0, 0, 0, 0, MII_RXD[3:0]};
    assign GMII_COL = MII_COL;
    assign GMII_CRS = MII_CRS;
    assign GMII_RX_CLK = MII_RX_CLK;
    assign GMII_RX_DV = MII_RX_DV;
    assign GMII_RX_ER = MII_RX_ER;
    assign GMII_TX_CLK = MII_TX_CLK;
    assign MII_TXD = GMII_TXD[3:0];
    assign MII_TX_EN = GMII_TX_EN;

endmodule
