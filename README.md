# Physics-aware-MSR
Physics-aware multi-stage regression for DER setpoint prediction of radial feeder with topological reconfigurations.

Following are the steps to implement multi-stage regression for predicting DER dispatch for 123-node 5-DER system.

(1) Run YALMIP_Installer.m file to install YALMIP in the same folder path where MATLAB runs.

(2) Then, run Bus123_20k_Data_OPF.m file to generate 20000 sample scenarios of OPF solution as per the objective function with the 123-node feeder topology. This code simulates different variances of solar injection and nodal load consumptions.

(3) Save the workspace variable OPF_data as OPF_data.mat in the same folder path where MATLAB is working.

(4) Then, load OPF_data.mat file and run Bus123_T0_MSR_compare_new.m file to compare the accuracy of DER dispatch prediction for nonlabeled vs labeled dataset with the proposed multi-stage regression.

References: 

[1] R. Chakraborty, M. S. Nazir, and A. Chakrabortty, “Data-driven optimal power dispatch for distributed energy resources in radial feeder using multi-stage regression,” in proceeding of 22nd IFAC World Congress, IFAC-PapersOnLine, vol. 56, no. 2, pp. 1552–1557, 2023.

[2] R. Chakraborty, “Power Flow Optimization Redesigns for Renewable- Integrated Power Systems: Methods, Architectures, and Risks,” Ph.D. Thesis, NC State University, 2023.
