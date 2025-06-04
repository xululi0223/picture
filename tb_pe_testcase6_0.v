`timescale 1ns / 1ps

module tb_pe_testcase6_0;

    // Parameters
    parameter DATA_WIDTH = 32;

    // 上位机与外接
    reg clk;
    reg rst_n;
    reg rx;
    wire tx;

    // Instantiate the Unit Under Test (UUT)
    soc_top soc_top_0 (
        .clk(clk), 
        .rst_n(rst_n), 
        
        .rx(rx),
        .tx(tx)
    );

    task inst2uart(input [31:0] inst);
      integer i;
      for(i=0; i<32; i=i+8)
      begin
          #1010 rx = 1'b0;    // start
          #1010 rx = inst[i];
          #1010 rx = inst[i+1];
          #1010 rx = inst[i+2];
          #1010 rx = inst[i+3];
          #1010 rx = inst[i+4];
          #1010 rx = inst[i+5];
          #1010 rx = inst[i+6];
          #1010 rx = inst[i+7];
          #1010 rx = ~(inst[i] ^ inst[i+1] ^ inst[i+2] ^ inst[i+3] ^ inst[i+4] ^ inst[i+5] ^ inst[i+6] ^ inst[i+7]);    // parity; odd
          #1010 rx = 1'b1;    // stop
      end
    endtask

    task data2uart(input [7:0] data1, input [7:0] data2, input [7:0] data3, input [7:0] data4);
      begin
        #1010 rx = 1'b0;    // start
        #1010 rx = data1[0];
        #1010 rx = data1[1];
        #1010 rx = data1[2];
        #1010 rx = data1[3];
        #1010 rx = data1[4];
        #1010 rx = data1[5];
        #1010 rx = data1[6];
        #1010 rx = data1[7];
        #1010 rx = ~(data1[0] ^ data1[1] ^ data1[2] ^ data1[3] ^ data1[4] ^ data1[5] ^ data1[6] ^ data1[7]);    // parity; odd
        #1010 rx = 1'b1;    // stop

        #1010 rx = 1'b0;    // start
        #1010 rx = data2[0];
        #1010 rx = data2[1];
        #1010 rx = data2[2];
        #1010 rx = data2[3];
        #1010 rx = data2[4];
        #1010 rx = data2[5];
        #1010 rx = data2[6];
        #1010 rx = data2[7];
        #1010 rx = ~(data2[0] ^ data2[1] ^ data2[2] ^ data2[3] ^ data2[4] ^ data2[5] ^ data2[6] ^ data2[7]);    // parity; odd
        #1010 rx = 1'b1;    // stop

        #1010 rx = 1'b0;    // start
        #1010 rx = data3[0];
        #1010 rx = data3[1];
        #1010 rx = data3[2];
        #1010 rx = data3[3];
        #1010 rx = data3[4];
        #1010 rx = data3[5];
        #1010 rx = data3[6];
        #1010 rx = data3[7];
        #1010 rx = ~(data3[0] ^ data3[1] ^ data3[2] ^ data3[3] ^ data3[4] ^ data3[5] ^ data3[6] ^ data3[7]);    // parity; odd
        #1010 rx = 1'b1;    // stop

        #1010 rx = 1'b0;    // start
        #1010 rx = data4[0];
        #1010 rx = data4[1];
        #1010 rx = data4[2];
        #1010 rx = data4[3];
        #1010 rx = data4[4];
        #1010 rx = data4[5];
        #1010 rx = data4[6];
        #1010 rx = data4[7];
        #1010 rx = ~(data4[0] ^ data4[1] ^ data4[2] ^ data4[3] ^ data4[4] ^ data4[5] ^ data4[6] ^ data4[7]);    // parity; odd
        #1010 rx = 1'b1;    // stop
      end
    endtask

    task data2uart_4bit(input [3:0] data1, input [3:0] data2, input [3:0] data3, input [3:0] data4, input [3:0] data5, input [3:0] data6, input [3:0] data7, input [3:0] data8);
      begin
        #1010 rx = 1'b0;    // start
        #1010 rx = data1[0];
        #1010 rx = data1[1];
        #1010 rx = data1[2];
        #1010 rx = data1[3];
        #1010 rx = data2[0];
        #1010 rx = data2[1];
        #1010 rx = data2[2];
        #1010 rx = data2[3];
        #1010 rx = ~(data1[0] ^ data1[1] ^ data1[2] ^ data1[3] ^ data2[0] ^ data2[1] ^ data2[2] ^ data2[3]);    // parity; odd
        #1010 rx = 1'b1;    // stop

        #1010 rx = 1'b0;    // start
        #1010 rx = data3[0];
        #1010 rx = data3[1];
        #1010 rx = data3[2];
        #1010 rx = data3[3];
        #1010 rx = data4[0];
        #1010 rx = data4[1];
        #1010 rx = data4[2];
        #1010 rx = data4[3];
        #1010 rx = ~(data3[0] ^ data3[1] ^ data3[2] ^ data3[3] ^ data4[0] ^ data4[1] ^ data4[2] ^ data4[3]);    // parity; odd
        #1010 rx = 1'b1;    // stop

        #1010 rx = 1'b0;    // start
        #1010 rx = data5[0];
        #1010 rx = data5[1];
        #1010 rx = data5[2];
        #1010 rx = data5[3];
        #1010 rx = data6[0];
        #1010 rx = data6[1];
        #1010 rx = data6[2];
        #1010 rx = data6[3];
        #1010 rx = ~(data5[0] ^ data5[1] ^ data5[2] ^ data5[3] ^ data6[0] ^ data6[1] ^ data6[2] ^ data6[3]);    // parity; odd
        #1010 rx = 1'b1;    // stop

        #1010 rx = 1'b0;    // start
        #1010 rx = data7[0];
        #1010 rx = data7[1];
        #1010 rx = data7[2];
        #1010 rx = data7[3];
        #1010 rx = data8[0];
        #1010 rx = data8[1];
        #1010 rx = data8[2];
        #1010 rx = data8[3];
        #1010 rx = ~(data7[0] ^ data7[1] ^ data7[2] ^ data7[3] ^ data8[0] ^ data8[1] ^ data8[2] ^ data8[3]);    // parity; odd
        #1010 rx = 1'b1;    // stop
      end
    endtask

    initial begin
        // Initialize Inputs
        
        // out_file = $fopen("uart_tx_data.txt", "w");


        clk = 1;
        rst_n = 0;
        rx = 1'b1;
        // data_transfer_mem_data_finish = 0;
        // mem_config_finish = 0;
        // Wait for global reset
        #100;
        
        // Apply reset
        rst_n = 0;
        #100;
        rst_n = 1;
        #8680;
        rx = 1'b1;

        
        // 发送数据传输配置指令
        // 数据传输 写入存储。第0个MEM，第2个Rank，第1个BG，偏移地址为12，长度为1行。 
        inst2uart(32'b01100000000000010001001100000001);
      #100000;
        // 传输数据 1行
        data2uart_4bit(4'd2, 4'd13, 4'd5, 4'd10, 4'd3, 4'd12, 4'd6, 4'd9); #100000;

        // 发送数据传输配置指令
        // 数据传输 写入存储。第0个MEM，第6个Rank，第1个BG，偏移地址为48，长度为1行。 
        inst2uart(32'b01100000000000110001110000000001);
      #100000;
        // 传输数据 1行
        data2uart_4bit(4'd13, 4'd2, 4'd10, 4'd5, 4'd12, 4'd3, 4'd9, 4'd6); #100000;

        // 发送开始指令传输指令
        inst2uart(32'b10000000000000000000000000000000);  #100000;

        // 计算配置指令 dot
        inst2uart(32'b10100000000000000000000000000000);  #100000;
        inst2uart(32'b01000000001000000100100000010000);  #100000;
        inst2uart(32'b00110000010000100110000000100001);  #100000;
        inst2uart(32'b00111000110000111000000000100001);  #100000;
        inst2uart(32'b00100001001001010000000000100001);  #100000;
        inst2uart(32'b10100000000000000000000000000001);  #100000;

        // 发送数据写回配置指令
        // 数据传输 读取存储。第0个MEM，第2个Rank，第1个BG，偏移地址为12，长度为1行。 
        inst2uart(32'b01110000000000010001001100000001);
        #100000;

        // 发送数据写回配置指令
        // 数据传输 读取存储。第0个MEM，第6个Rank，第1个BG，偏移地址为48，长度为1行。 
        inst2uart(32'b01110000000000110001110000000001);
        #100000;

        // 发送数据写回配置指令
        // 数据传输 读取存储。第0个MEM，第9个Rank，第2个BG，偏移地址为32，长度为1行。 
        inst2uart(32'b01110000000001001010100000000001);
        #100000;

        // 结束计算指令
        inst2uart(32'b11100000000000000000000000000000);  #100000;

        // 发送结束指令传输指令
        inst2uart(32'b10000000000000000000000000000001);  #100000;


        // Finish simulation
        #3000000;
        $finish;
    end

    always #50 clk = ~clk; // Generate clock signal

endmodule