function [] = bodyplot3D(i, poses_3D)

%% This function takes index number and joint positions and 3D plots the 
% head, upper extremities, body and knees.

% Inputs:
%     i: index number
%     poses_3D: pose positions in a cell
%     
% Outputs:
%    3D plots the body including the eyes, head, chest, shoulders, elbows,
%    wrists, hips, knees.
%     
% Written by: Ahmet Arac, Department of Neurology, UCLA, Los Angeles, CA

head = poses_3D.head;
Reye = poses_3D.Reye;
Rear = poses_3D.Rear;
Leye = poses_3D.Leye;
Lear = poses_3D.Lear;

chest = poses_3D.chest;
Rshoulder = poses_3D.Rshoulder;
Relbow = poses_3D.Relbow;
Rwrist = poses_3D.Rwrist;
Lshoulder = poses_3D.Lshoulder;
Lelbow = poses_3D.Lelbow;
Lwrist = poses_3D.Lwrist;
midhip = poses_3D.midhip;
Rhip = poses_3D.Rhip;
Lhip = poses_3D.Lhip;
Rknee = poses_3D.Rknee;
Lknee = poses_3D.Lknee;


plot3([head(i,1) Reye(i,1)],...
    [head(i,2) Reye(i,2)], [head(i,3) Reye(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([head(i,1) Leye(i,1)],...
    [head(i,2) Leye(i,2)], [head(i,3) Leye(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
% plot3([Rear(i,1) Reye(i,1)],...
%     [Rear(i,2) Reye(i,2)], [Rear(i,3) Reye(i,3)],...
%     'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
% hold on
% plot3([Lear(i,1) Leye(i,1)],...
%     [Lear(i,2) Leye(i,2)], [Lear(i,3) Leye(i,3)],...
%     'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
% hold on

plot3([head(i,1) chest(i,1)],...
    [head(i,2) chest(i,2)], [head(i,3) chest(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([Rshoulder(i,1) chest(i,1)],...
    [Rshoulder(i,2) chest(i,2)], [Rshoulder(i,3) chest(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([Lshoulder(i,1) chest(i,1)],...
    [Lshoulder(i,2) chest(i,2)], [Lshoulder(i,3) chest(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([Rshoulder(i,1) Relbow(i,1)],...
    [Rshoulder(i,2) Relbow(i,2)], [Rshoulder(i,3) Relbow(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([Lshoulder(i,1) Lelbow(i,1)],...
    [Lshoulder(i,2) Lelbow(i,2)], [Lshoulder(i,3) Lelbow(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([Rwrist(i,1) Relbow(i,1)],...
    [Rwrist(i,2) Relbow(i,2)], [Rwrist(i,3) Relbow(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([Lwrist(i,1) Lelbow(i,1)],...
    [Lwrist(i,2) Lelbow(i,2)], [Lwrist(i,3) Lelbow(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on

plot3([midhip(i,1) chest(i,1)],...
    [midhip(i,2) chest(i,2)], [midhip(i,3) chest(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([midhip(i,1) Rhip(i,1)],...
    [midhip(i,2) Rhip(i,2)], [midhip(i,3) Rhip(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on 
plot3([midhip(i,1) Lhip(i,1)],...
    [midhip(i,2) Lhip(i,2)], [midhip(i,3) Lhip(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([Rhip(i,1) Rknee(i,1)],...
    [Rhip(i,2) Rknee(i,2)], [Rhip(i,3) Rknee(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on
hold on
plot3([Lhip(i,1) Lknee(i,1)],...
    [Lhip(i,2) Lknee(i,2)], [Lhip(i,3) Lknee(i,3)],...
    'LineStyle','-','LineWidth',5, 'Color',[0.1 0.7 1]);grid on


end