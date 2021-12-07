extnilp := function(m,n)
    local G;
    if m in PositiveIntegers and n in PositiveIntegers then
        G:=SmallGroup(m,n);
        Print("G cong ", StructureDescription(G),"\n");
        Print("G/","(",StructureDescription(FittingSubgroup(G)),") = ",StructureDescription(G/FittingSubgroup(G)),"\n");
        # Describes the Quotient G/N, N being Fitting Subgroup of G.
        
        if IsAbelian(G/FittingSubgroup(G))=true then
            Print("G is an Abelian Extension.\n");
        elif IsNilpotent(G/FittingSubgroup(G))=true then
            Print("G is a xAbelian Nilpotent Extension.\n");
        else
            Print("G is a xNilpotent Extension.\n");
        fi;
    else
        return 0;
    fi;
end;
