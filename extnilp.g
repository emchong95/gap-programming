extnilp := function(m,n)
    local G;
    if m in PositiveIntegers and n in PositiveIntegers then
        G:=SmallGroup(m,n);
        Print("G/",IdGroup(FittingSubgroup(G))," = ",IdGroup(G/FittingSubgroup(G)),"\n");
        # Describes the Quotient G/N, N being Fitting Subgroup of G.
        
        if IsAbelian(G/FittingSubgroup(G))=true then
            Print("G=SmallGroup(",m,",",n,"): Abelian Extension.\n");
        elif IsNilpotent(G/FittingSubgroup(G))=true then
            Print("G=SmallGroup(",m,",",n,"): xAbelian Nilpotent Extension.\n");
        else
            Print("G=SmallGroup(",m,",",n,"): xNilpotent Extension.\n");
        fi;
    else
        return 0;
    fi;
end;
