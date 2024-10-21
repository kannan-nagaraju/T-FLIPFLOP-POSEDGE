# T-FLIPFLOP-POSEDGE

**AIM:**

To implement  T flipflop using verilog and validating their functionality using their functional tables

**SOFTWARE REQUIRED:**

Quartus prime

**THEORY**

**T Flip-Flop**

T flip-flop is the simplified version of JK flip-flop. It is obtained by connecting the same input ‘T’ to both inputs of JK flip-flop. It operates with only positive clock transitions or negative clock transitions. The circuit diagram of T flip-flop is shown in the following figure.

![image](https://github.com/naavaneetha/T-FLIPFLOP-POSEDGE/assets/154305477/458a68fe-2d08-4a9d-ac4f-7ae0480ce0bd)

 
This circuit has single input T and two outputs Qtt & Qtt’. The operation of T flip-flop is same as that of JK flip-flop. Here, we considered the inputs of JK flip-flop as J = T and K = T in order to utilize the modified JK flip-flop for 2 combinations of inputs. So, we eliminated the other two combinations of J & K, for which those two values are complement to each other in T flip-flop. The following table shows the state table of T flip-flop.

Here, Qtt & Qt+1t+1 are present state & next state respectively. So, T flip-flop can be used for one of these two functions such as Hold, & Complement of present state based on the input conditions, when positive transition of clock signal is applied. The following table shows the characteristic table of T flip-flop. Inputs Present State Next State

![image](https://github.com/naavaneetha/T-FLIPFLOP-POSEDGE/assets/154305477/cdd7fb32-539f-4b66-bb8d-f305a153c886)

 
From the above characteristic table, we can directly write the next state equation as Q(t+1)=T′Q(t)+TQ(t)′ ⇒Q(t+1)=T⊕Q(t)

**Procedure**

1. Type the program in Quartus software.

2. Compile and run the program.

3. Generate the RTL schematic and save the logic diagram.

4. Create nodes for inputs and outputs to generate the timing diagram.

5. For different input combinations generate the timing diagram.

**PROGRAM**
## Developed By:N.Kannan
## Reg No:212223230097

```module TFLIPFLOP( input clk, rst_n, input t,
output reg q,
output q_bar
);
always@(posedge clk) 
begin 
  if(!rst_n)
  q<=0;
  else
  if(t)
  q<=~q;
  else
  q<=q;
  end
  assign q_bar = ~q;
  endmodule
````


**RTL LOGIC FOR FLIPFLOPS**
![image](https://github.com/user-attachments/assets/d7b6f18a-745c-4d5a-b23b-e1ce98023e55)


**TIMING DIGRAMS FOR FLIP FLOPS**
![WhatsApp Image 2024-10-21 at 11 37 24_145eab6d](https://github.com/user-attachments/assets/94f18c50-f173-4c75-9f79-43ac79491ef8)


## RESULT:
The implementation of   T flipflop using verilog and validating their functionality using their functional tables was verified successfully.

