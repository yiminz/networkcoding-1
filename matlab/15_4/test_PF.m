close all;
clear all;
clc;
message_binary_vector_lengths_in_Byte = [4,3,2,1];
message_sparsity_factors = [0.05];%, 0.05, 0.10];
message_near_sparsity_parameters = [0];% 0 0 ];
m_save_file_name = 'test_PF';

m_time_res = 1.3474e-8 ;  %%5.3474e-9
m_end_time = 1e-3;

m_simulation_scenario = simulation_scenario(message_binary_vector_lengths_in_Byte,message_sparsity_factors,message_near_sparsity_parameters,m_save_file_name);
m_simulation_scenario.initialize_channel_model;
m_simulation_scenario.set_time_params(m_time_res,m_end_time);
m_simulation_scenario.create_sensor_deployment_uniform_centered_gateway;
%m_simulation_scenario.create_sensor_deployment_uniform_cornered_gateway;
%m_simulation_scenario.m_sensor_deployment.plot_this;
m_simulation_scenario.run_all_PF;





