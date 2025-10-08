%function that performs backward induction of game
%inputs are payoff variables of the game
%outputs are the decision values and payoffs for both players at all stages of the game
function [attackerFinalPayoff, defenderFinalPayoff, attackerFinalDecision, defenderFinalDecision, EUa_d2_version1, EUa_d2_version2, EUd_d2_version1, EUd_d2_version2, DECd_d2_version1, DECd_d2_version2, EUa_a2_version1_d20, EUd_a2_version1_d20, EUa_a2_version1_d21, EUd_a2_version1_d21, EUa_a2_version2_d20, EUd_a2_version2_d20, EUa_a2_version2_d21, EUd_a2_version2_d21, DECa_a2_version1_d20, DECa_a2_version1_d21, DECa_a2_version2_d20, DECa_a2_version2_d21] = fullGameBackwardInduction(R,V,B,RD,CR,P,Q,CA,UP,p0,p1,p2,p3,p4)
    %attacker's possible final utilities
    Ua1 = 0;
    Ua2 = 0;
    Ua3 = -CA;
    Ua4 = -CA;
    Ua5 = -CA;
    Ua6 = -CA;
    Ua7 = -CA-P;
    Ua8 = -CA-CR;
    Ua9 = -CA-CR-P;
    Ua10 = -CA+R;
    Ua11 = -CA+R-P;
    Ua12 = -CA+R-CR;
    Ua13 = -CA+R-CR-P;
    Ua14 = -CA;
    Ua15 = -CA-P;
    Ua16 = -CA-CR;
    Ua17 = -CA-CR-P;
    Ua18 = -CA+R;
    Ua19 = -CA+R-P;
    Ua20 = -CA+R-CR;
    Ua21 = -CA+R-CR-P;
    disp("Ua1");
    disp(Ua1);
    disp("Ua2");
    disp(Ua2);
    disp("Ua3");
    disp(Ua3);
    disp("Ua4");
    disp(Ua4);
    disp("Ua5");
    disp(Ua5);
    disp("Ua6");
    disp(Ua6);
    disp("Ua7");
    disp(Ua7);
    disp("Ua8");
    disp(Ua8);
    disp("Ua9");
    disp(Ua9);
    disp("Ua10");
    disp(Ua10);
    disp("Ua11");
    disp(Ua11);
    disp("Ua12");
    disp(Ua12);
    disp("Ua13");
    disp(Ua13);
    disp("Ua14");
    disp(Ua14);
    disp("Ua15");
    disp(Ua15);
    disp("Ua16");
    disp(Ua16);
    disp("Ua17");
    disp(Ua17);
    disp("Ua18");
    disp(Ua18);
    disp("Ua19");
    disp(Ua19);
    disp("Ua20");
    disp(Ua20);
    disp("Ua21");
    disp(Ua21);

    %defender's possible final utilities
    Ud1 = -B;
    Ud2 = 0;
    Ud3 = -B;
    Ud4 = 0;
    Ud5 = -B;
    Ud6 = -B-V+RD;
    Ud7 = -B-V+RD+UP;
    Ud8 = -B-Q;
    Ud9 = -B-Q+UP;
    Ud10 = -B-R-V+RD;
    Ud11 = -B-R-V+RD+UP;
    Ud12 = -B-Q-R;
    Ud13 = -B-Q-R+UP;
    Ud14 = -V;
    Ud15 = -V+UP;
    Ud16 = -Q;
    Ud17 = -Q+UP;
    Ud18 = -R-V;
    Ud19 = -R-V+UP;
    Ud20 = -Q-R;
    Ud21 = -Q-R+UP;
    disp("Ud1");
    disp(Ud1);
    disp("Ud2");
    disp(Ud2);
    disp("Ud3");
    disp(Ud3);
    disp("Ud4");
    disp(Ud4);
    disp("Ud5");
    disp(Ud5);
    disp("Ud6");
    disp(Ud6);
    disp("Ud7");
    disp(Ud7);
    disp("Ud8");
    disp(Ud8);
    disp("Ud9");
    disp(Ud9);
    disp("Ud10");
    disp(Ud10);
    disp("Ud11");
    disp(Ud11);
    disp("Ud12");
    disp(Ud12);
    disp("Ud13");
    disp(Ud13);
    disp("Ud14");
    disp(Ud14);
    disp("Ud15");
    disp(Ud15);
    disp("Ud16");
    disp(Ud16);
    disp("Ud17");
    disp(Ud17);
    disp("Ud18");
    disp(Ud18);
    disp("Ud19");
    disp(Ud19);
    disp("Ud20");
    disp(Ud20);
    disp("Ud21");
    disp(Ud21);


    %attacker's utilities after possible prosecution
    %version1 = d11a11n11n21
    EUa_n3_version1_d20a20 = (1-p3) * Ua6 + p3 * Ua7;
    EUa_n3_version1_d20a21 = (1-p2) * Ua8 + p2 * Ua9;
    EUa_n3_version1_d21a20 = (1-p4) * Ua10 + p4 * Ua11;
    EUa_n3_version1_d21a21 = (1-p2) * Ua12 + p2 * Ua13;
    disp("EUa_n3_version1_d20a20");
    disp(EUa_n3_version1_d20a20);
    disp("EUa_n3_version1_d20a21");
    disp(EUa_n3_version1_d20a21);
    disp("EUa_n3_version1_d21a20");
    disp(EUa_n3_version1_d21a20);
    disp("EUa_n3_version1_d21a21");
    disp(EUa_n3_version1_d21a21);
    
    %version2 = d10a11n11
    EUa_n3_version2_d20a20 = (1-p3) * Ua14 + p3 * Ua15;
    EUa_n3_version2_d20a21 = (1-p2) * Ua16 + p2 * Ua17;
    EUa_n3_version2_d21a20 = (1-p4) * Ua18 + p4 * Ua19;
    EUa_n3_version2_d21a21 = (1-p2) * Ua20 + p2 * Ua21;
    disp("EUa_n3_version2_d20a20");
    disp(EUa_n3_version2_d20a20);
    disp("EUa_n3_version2_d20a21");
    disp(EUa_n3_version2_d20a21);
    disp("EUa_n3_version2_d21a20");
    disp(EUa_n3_version2_d21a20);
    disp("EUa_n3_version2_d21a21");
    disp(EUa_n3_version2_d21a21);
    
    %defender's utilities after possible prosecution
    %version1 = d11a11n11n21n30
    EUd_n3_version1_d20a20 = (1-p3) * Ud6 + p3 * Ud7;
    EUd_n3_version1_d20a21 = (1-p2) * Ud8 + p2 * Ud9;
    EUd_n3_version1_d21a20 = (1-p4) * Ud10 + p4 * Ud11;
    EUd_n3_version1_d21a21 = (1-p2) * Ud12 + p2 * Ud13;
    disp("EUd_n3_version1_d20a20");
    disp(EUd_n3_version1_d20a20);
    disp("EUd_n3_version1_d20a21");
    disp(EUd_n3_version1_d20a21);
    disp("EUd_n3_version1_d21a20");
    disp(EUd_n3_version1_d21a20);
    disp("EUd_n3_version1_d21a21");
    disp(EUd_n3_version1_d21a21);
    
    %version2 = d10a11n11
    EUd_n3_version2_d20a20 = (1-p3) * Ud14 + p3 * Ud15;
    EUd_n3_version2_d20a21 = (1-p2) * Ud16 + p2 * Ud17;
    EUd_n3_version2_d21a20 = (1-p4) * Ud18 + p4 * Ud19;
    EUd_n3_version2_d21a21 = (1-p2) * Ud20 + p2 * Ud21;
    disp("EUd_n3_version2_d20a20");
    disp(EUd_n3_version2_d20a20);
    disp("EUd_n3_version2_d20a21");
    disp(EUd_n3_version2_d20a21);
    disp("EUd_n3_version2_d21a20");
    disp(EUd_n3_version2_d21a20);
    disp("EUd_n3_version2_d21a21");
    disp(EUd_n3_version2_d21a21);
    

    %attacker's decision to return data
    %version1 = d11a11n11n21
    if EUa_n3_version1_d20a20>EUa_n3_version1_d20a21
        DECa_a2_version1_d20=0;
    elseif EUa_n3_version1_d20a20<EUa_n3_version1_d20a21
        DECa_a2_version1_d20=1;
    elseif EUa_n3_version1_d20a20==EUa_n3_version1_d20a21
        DECa_a2_version1_d20=0.5;
    end
    disp("DECa_a2_version1_d20");
    disp(DECa_a2_version1_d20);
    if EUa_n3_version1_d21a20>EUa_n3_version1_d21a21
        DECa_a2_version1_d21=0;
    elseif EUa_n3_version1_d21a20<EUa_n3_version1_d21a21
        DECa_a2_version1_d21=1;
    elseif EUa_n3_version1_d21a20==EUa_n3_version1_d21a21
        DECa_a2_version1_d21=0.5;
    end
    disp("DECa_a2_version1_d21");
    disp(DECa_a2_version1_d21);
    
    %version2 = d10a11n11
    if EUa_n3_version2_d20a20>EUa_n3_version2_d20a21
        DECa_a2_version2_d20=0;
    elseif EUa_n3_version2_d20a20<EUa_n3_version2_d20a21
        DECa_a2_version2_d20=1;
    elseif EUa_n3_version2_d20a20==EUa_n3_version2_d20a21
        DECa_a2_version2_d20=0.5; 
    end
    disp("DECa_a2_version2_d20");
    disp(DECa_a2_version2_d20);
    if EUa_n3_version2_d21a20>EUa_n3_version2_d21a21
        DECa_a2_version2_d21=0;
    elseif EUa_n3_version2_d21a20<EUa_n3_version2_d21a21
        DECa_a2_version2_d21=1;
    elseif EUa_n3_version2_d21a20==EUa_n3_version2_d21a21
        DECa_a2_version2_d21=0.5; 
    end
    disp("DECa_a2_version2_d21");
    disp(DECa_a2_version2_d21);
    

    %payoff available to the attacker after a2
    %version1 = d11a11n11n21
    EUa_a2_version1_d20 = (1-DECa_a2_version1_d20)*EUa_n3_version1_d20a20 - (0-DECa_a2_version1_d20)*EUa_n3_version1_d20a21;
    EUa_a2_version1_d21 = (1-DECa_a2_version1_d21)*EUa_n3_version1_d21a20 - (0-DECa_a2_version1_d21)*EUa_n3_version1_d21a21;
    disp("EUa_a2_version1_d20");
    disp(EUa_a2_version1_d20);
    disp("EUa_a2_version1_d21");
    disp(EUa_a2_version1_d21);
    %version2 = d10a11n11
    EUa_a2_version2_d20 = (1-DECa_a2_version2_d20)*EUa_n3_version2_d20a20 - (0-DECa_a2_version2_d20)*EUa_n3_version2_d20a21;
    EUa_a2_version2_d21 = (1-DECa_a2_version2_d21)*EUa_n3_version2_d21a20 - (0-DECa_a2_version2_d21)*EUa_n3_version2_d21a21;
    disp("EUa_a2_version2_d20");
    disp(EUa_a2_version2_d20);
    disp("EUa_a2_version2_d21");
    disp(EUa_a2_version2_d21);
    
    %payoff available to the defender after a2
    %version1 = d11a11n11n21
    EUd_a2_version1_d20 = (1-DECa_a2_version1_d20)*EUd_n3_version1_d20a20 - (0-DECa_a2_version1_d20)*EUd_n3_version1_d20a21;
    EUd_a2_version1_d21 = (1-DECa_a2_version1_d21)*EUd_n3_version1_d21a20 - (0-DECa_a2_version1_d21)*EUd_n3_version1_d21a21;
    disp("EUd_a2_version1_d20");
    disp(EUd_a2_version1_d20);
    disp("EUd_a2_version1_d21");
    disp(EUd_a2_version1_d21);
    %version2 = d10a11n11
    EUd_a2_version2_d20 = (1-DECa_a2_version2_d20)*EUd_n3_version2_d20a20 - (0-DECa_a2_version2_d20)*EUd_n3_version2_d20a21;
    EUd_a2_version2_d21 = (1-DECa_a2_version2_d21)*EUd_n3_version2_d21a20 - (0-DECa_a2_version2_d21)*EUd_n3_version2_d21a21;
    disp("EUd_a2_version2_d20");
    disp(EUd_a2_version2_d20);
    disp("EUd_a2_version2_d21");
    disp(EUd_a2_version2_d21);


    %defender's decision to pay
    %version1 = d11a11n11n21
    if EUd_a2_version1_d20>EUd_a2_version1_d21
        DECd_d2_version1=0;
    elseif EUd_a2_version1_d20<EUd_a2_version1_d21
        DECd_d2_version1=1;
    elseif EUd_a2_version1_d20==EUd_a2_version1_d21
        DECd_d2_version1=0.5;
    end
    disp("DECd_d2_version1");
    disp(DECd_d2_version1);
    %version2 = d10a11n11
    if EUd_a2_version2_d20>EUd_a2_version2_d21
        DECd_d2_version2=0;
    elseif EUd_a2_version2_d20<EUd_a2_version2_d21
        DECd_d2_version2=1;
    elseif EUd_a2_version2_d20==EUd_a2_version2_d21
        DECd_d2_version2=0.5;
    end
    disp("DECd_d2_version2");
    disp(DECd_d2_version2);


    %payoff available to attacker after d2
    %version1 = d11a11n11n21
    EUa_d2_version1 = (1-DECd_d2_version1)*EUa_a2_version1_d20 - (0-DECd_d2_version1)*EUa_a2_version1_d21;
    disp("EUa_d2_version1");
    disp(EUa_d2_version1);
    %version2 = d10a11n11
    EUa_d2_version2 = (1-DECd_d2_version2)*EUa_a2_version2_d20 - (0-DECd_d2_version2)*EUa_a2_version2_d21;
    disp("EUa_d2_version2");
    disp(EUa_d2_version2);
    
    %payoff available to defender after d2
    %version1 = d11a11n11n21
    EUd_d2_version1 = (1-DECd_d2_version1)*EUd_a2_version1_d20 - (0-DECd_d2_version1)*EUd_a2_version1_d21;
    disp("EUd_d2_version1");
    disp(EUd_d2_version1);
    %version2 = d10a11n11
    EUd_d2_version2 = (1-DECd_d2_version2)*EUd_a2_version2_d20 - (0-DECd_d2_version2)*EUd_a2_version2_d21;
    disp("EUd_d2_version2");
    disp(EUd_d2_version2);


    %payoff available to attacker after n3
    EUa_n2 = p1 * Ua5 + (1-p1) * EUa_d2_version1;
    disp("EUa_n2");
    disp(EUa_n2);
    %payoff available to defender after n3
    EUd_n2 = p1 * Ud5 + (1-p1) * EUd_d2_version1;
    disp("EUd_n2");
    disp(EUd_n2);


    %payoff available to attacker after n1 when defender backsup (and attacker attacks)
    EUa_n1_d11a11 = p0 * EUa_n2 + (1-p0) * Ua3;
    disp("EUa_n1_d11a11");
    disp(EUa_n1_d11a11);
    %payoff available to defender after n1 when defender backsup (and attacker attacks)
    EUd_n1_d11a11 = p0 * EUd_n2 + (1-p0) * Ud3;
    disp("EUd_n1_d11a11");
    disp(EUd_n1_d11a11);
    
    
    %payoff available to attacker after n1 when defender doesn't backup (and attacker attacks)
    EUa_n1_d10a11 = p0 * EUa_d2_version2 + (1-p0) * Ua4;
    disp("EUa_n1_d10a11");
    disp(EUa_n1_d10a11);
    %payoff available to defender after n1 when defender doesn't backup (and attacker attacks)
    EUd_n1_d10a11 = p0 * EUd_d2_version2 + (1-p0) * Ud4;
    disp("EUd_n1_d10a11");
    disp(EUd_n1_d10a11);


    %create 2x2 matrix for simultaneous move game
    %       backup dont
    %attack [ , ]  [ , ]
    %dont   [ , ]  [ , ]
    
    %add attacker's payoffs
    finalPayoffMatrix = [EUa_n1_d11a11 EUa_n1_d10a11; Ua1 Ua2];
    %add defender's payoffs
    finalPayoffMatrix(:,:,2) = [EUd_n1_d11a11 EUd_n1_d10a11; Ud1 Ud2];
    disp("finalPayoffMatrix");
    disp(finalPayoffMatrix);
    
    %create pure strategy nash equilibrium matrix where 0 means it's not the best strategy and 1 means it is
    %add attacker's best strategy
    psneMatrix = [0 0; 0 0];
    %add defender's best strategy
    psneMatrix(:,:,2) = [0 0; 0 0];
    
    %create matrix that hold the values for each player's first decision for each strategy
    %add attacker's decision values
    decisionValueMatrix = [1 1; 0 0];
    %add defender's decision values
    decisionValueMatrix(:,:,2) = [1 0; 1 0];
    
    %fill out psne matrix based on values in payoff matrix
    if finalPayoffMatrix(1,1,1) > finalPayoffMatrix(2,1,1)
        psneMatrix(1,1,1)=1;
    elseif finalPayoffMatrix(1,1,1) < finalPayoffMatrix(2,1,1)
        psneMatrix(2,1,1)=1;
    else
        psneMatrix(1,1,1)=1;
        psneMatrix(2,1,1)=1;
    end
    
    if finalPayoffMatrix(1,2,1) > finalPayoffMatrix(2,2,1)
        psneMatrix(1,2,1)=1;
    elseif finalPayoffMatrix(1,2,1) < finalPayoffMatrix(2,2,1)
        psneMatrix(2,2,1)=1;
    else
        psneMatrix(1,2,1)=1;
        psneMatrix(2,2,1)=1;
    end
    
    
    if finalPayoffMatrix(1,1,2) > finalPayoffMatrix(1,2,2)
        psneMatrix(1,1,2)=1;
    elseif finalPayoffMatrix(1,1,2) < finalPayoffMatrix(1,2,2)
        psneMatrix(1,2,2)=1;
    else
        psneMatrix(1,1,2)=1;
        psneMatrix(1,2,2)=1;
    end
    
    if finalPayoffMatrix(2,1,2) > finalPayoffMatrix(2,2,2)
        psneMatrix(2,1,2)=1;
    elseif finalPayoffMatrix(2,1,2) < finalPayoffMatrix(2,2,2)
        psneMatrix(2,2,2)=1;
    else
        psneMatrix(2,1,2)=1;
        psneMatrix(2,2,2)=1;
    end
    
    disp("psneMatrix");
    disp(psneMatrix);
    %variable to keep track of the number of pure strategy nash equilibria
    numPSNE = 0;
    
    %find and store all psne
    for row = 1:2
        for col = 1:2
            if psneMatrix(row,col,1)==1 && psneMatrix(row,col,2)==1
                attackerFinalPayoff = finalPayoffMatrix(row,col,1);
                defenderFinalPayoff = finalPayoffMatrix(row,col,2);
                attackerFinalDecision = decisionValueMatrix(row,col,1);
                defenderFinalDecision = decisionValueMatrix(row,col,2);
                numPSNE=numPSNE+1;
            end
        end
    end
    
    %if there is more than one psne, determine the final payoff based on the msne
    %final decision is probability of attack for attacker and probability of backup for defender
    syms probAttack probBackup
    if numPSNE > 1 || numPSNE == 0

        solProbAttack = double(solve(probAttack * finalPayoffMatrix(1,1,2) + (1-probAttack) * finalPayoffMatrix(2,1,2) == probAttack * finalPayoffMatrix(1,2,2) + (1-probAttack) * finalPayoffMatrix(2,2,2)));
        solProbBackup = double(solve(probBackup * finalPayoffMatrix(1,1,1) + (1-probBackup) * finalPayoffMatrix(1,2,1) == probBackup * finalPayoffMatrix(2,1,1) + (1-probBackup) * finalPayoffMatrix(2,2,1)));

    
        attackerFinalDecision = solProbAttack;
        defenderFinalDecision = solProbBackup;

        msneProb = [solProbAttack*solProbBackup solProbAttack*(1-solProbBackup); (1-solProbAttack)*solProbBackup (1-solProbAttack)*(1-solProbBackup)];
        attackerFinalPayoff = 0;
        defenderFinalPayoff = 0;
        for row = 1:2
            for col = 1:2
                attackerFinalPayoff = attackerFinalPayoff + msneProb(row,col)*finalPayoffMatrix(row,col,1);
                defenderFinalPayoff = defenderFinalPayoff + msneProb(row,col)*finalPayoffMatrix(row,col,2);
            end
        end
    end
    disp("numPSNE");
    disp(numPSNE);
    disp("attackerFinalPayoff");
    disp(attackerFinalPayoff);
    disp("defenderFinalPayoff");
    disp(defenderFinalPayoff);
    disp("attackerFinalDecision");
    disp(attackerFinalDecision);
    disp("defenderFinalDecision");
    disp(defenderFinalDecision);
end
