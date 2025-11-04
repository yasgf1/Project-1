//Yasmin Guerra Flores EMPLID 24245887

module to_Upper(A7,A6,A5,A4,A3,A2,A1,A0, b7, b6, b5, b4, b3, b2, b1, b0);
  
  output b7, b6, b5, b4, b3, b2, b1, b0; //output bits
  input A7,A6,A5,A4,A3,A2,A1,A0; //input bits
  wire w1, w2, w3, w4, w5, notA0, notA1, notA2, notA3, notA4, notA6, notA7, F;

  //NOT GATES  ~ for complement
  not #(5) N1 (notA7, A7);
  not #(5) N2 (notA6, A6);
  not #(5) N3 (notA4, A4);
  not #(5) N4 (notA3, A3);
  not #(5) N5 (notA2, A2);
  not #(5) N6 (notA1, A1);
  not #(5) N7 (notA0, A0);
  
  //AND GATES ~ sum of products
  and #(10) G1 (w1, A7, A5);
  and #(10) G2 (w2, notA7, notA6, A5);
  and #(10) G3 (w3, notA7, A5, notA4, notA3, notA2, notA1, notA0);
  and #(10) G4 (w4, notA7, A6, A5, A4, A3, A2);
  and #(10) G5 (w5, notA7, A6, A5, A4, A3, notA2, A1, A0);
    
  //OR GATE ~ combines all SOP terms 
  or #(10) G6 (F, w1, w2, w3, w4, w5);
  
  /* BUFFERS ~ we keep A0-A4 & A6-A7 constant so we add buffers to transfer to corresponding bit placement. A5 takes in F input, 
  which is what was calculated with the NOT, AND, and OR gates. This is used to determine to flip or keep A5 as if, given that it is not a
  lowercase character. 
  */
  buf #4 O1 (b7, A7);
  buf #4 O2 (b6, A6);
  buf #4 O3 (b5, F);
  buf #4 O4 (b4, A4);
  buf #4 O5 (b3, A3);
  buf #4 O6 (b2, A2);
  buf #4 O7 (b1, A1);
  buf #4 O8 (b0, A0);
  
  
  
endmodule
