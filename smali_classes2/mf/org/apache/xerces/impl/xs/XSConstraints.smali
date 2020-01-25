.class public Lmf/org/apache/xerces/impl/xs/XSConstraints;
.super Ljava/lang/Object;
.source "XSConstraints.java"


# static fields
.field private static final ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

.field static final OCCURRENCE_UNKNOWN:I = -0x2

.field static final STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "string"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSConstraints$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object p0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_3

    sget-object p0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_3
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :catch_0
    return-object v1

    :cond_5
    return-object v1
.end method

.method private static addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    const/4 p1, 0x1

    iput-short p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    and-int/2addr v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p0, v0, :cond_8

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result p0

    return p0

    :cond_4
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_7

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    if-ne v0, v1, :cond_6

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v0, :cond_5

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_0
    check-cast p0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result p0

    return p0

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v2
.end method

.method public static checkComplexDerivationOk(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p0, v0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result p0

    return p0
.end method

.method public static checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    if-ne v0, v2, :cond_2

    invoke-virtual {p3, p1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    :goto_0
    array-length p3, p1

    if-lt v1, p3, :cond_1

    goto :goto_1

    :cond_1
    aget-object p3, p1, v1

    invoke-static {p0, p3, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    :goto_2
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v1

    invoke-static {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static checkIDConstraintRestriction(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    return-void
.end method

.method private static checkMapAndSum(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "unbounded"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 p4, 0x1

    aput-object p2, p3, p4

    const/4 p2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    const/4 p2, 0x3

    if-ne p6, p1, :cond_1

    const-string p1, "unbounded"

    goto :goto_1

    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, p3, p2

    const-string p1, "rcase-MapAndSum.2"

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p2

    move p5, v1

    :goto_2
    if-lt p5, p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v0, v1

    :goto_3
    if-ge v0, p2, :cond_4

    invoke-virtual {p4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :try_start_0
    invoke-static {p6, p3, v2, p7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p1, 0x0

    const-string p2, "rcase-MapAndSum.1"

    invoke-direct {p0, p2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static checkNSCompat(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p6, :cond_2

    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result p6

    if-nez p6, :cond_2

    new-instance p3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p6, 0x5

    new-array p6, p6, [Ljava/lang/Object;

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p0, p6, v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p6, v0

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    const-string p1, "unbounded"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, p6, v2

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p6, p1

    const/4 p1, 0x4

    if-ne p5, p0, :cond_1

    const-string p0, "unbounded"

    goto :goto_1

    :cond_1
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    aput-object p0, p6, p1

    const-string p0, "rcase-NSCompat.2"

    invoke-direct {p3, p0, p6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p3, p2, v1

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object p0, p2, v0

    const-string p0, "rcase-NSCompat.1"

    invoke-direct {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private static checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result p7

    if-nez p7, :cond_2

    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "unbounded"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 p4, 0x1

    aput-object p2, p3, p4

    const/4 p2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    const/4 p2, 0x3

    if-ne p6, p1, :cond_1

    const-string p1, "unbounded"

    goto :goto_1

    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, p3, p2

    const-string p1, "rcase-NSRecurseCheckCardinality.2"

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    move p2, v0

    :goto_2
    if-lt p2, p1, :cond_3

    return-void

    :cond_3
    const/4 p5, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-static {p6, p3, p4, p5, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string p1, "rcase-NSRecurseCheckCardinality.1"

    invoke-direct {p0, p1, p5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static checkNSSubset(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "unbounded"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    aput-object p2, p3, v2

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v1

    const/4 p2, 0x3

    if-ne p5, p1, :cond_1

    const-string p1, "unbounded"

    goto :goto_1

    :cond_1
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, p3, p2

    const-string p1, "rcase-NSSubset.2"

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "rcase-NSSubset.3"

    invoke-direct {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p1, 0x0

    const-string p2, "rcase-NSSubset.1"

    invoke-direct {p0, p2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static checkNameAndTypeOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSElementDecl;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v0, v1, :cond_e

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array p2, v6, [Ljava/lang/Object;

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p0, p2, v5

    const-string p0, "rcase-NameAndTypeOK.2"

    invoke-direct {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance p3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p0, v0, v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v6

    const/4 p0, -0x1

    if-ne p2, p0, :cond_2

    const-string p1, "unbounded"

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, v0, v4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    if-ne p5, p0, :cond_3

    const-string p0, "unbounded"

    goto :goto_2

    :cond_3
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    aput-object p0, v0, v2

    const-string p0, "rcase-NameAndTypeOK.3"

    invoke-direct {p3, p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_4
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result p1

    if-ne p1, v4, :cond_a

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result p1

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result p1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short p1, p1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne p1, v6, :cond_5

    goto :goto_3

    :cond_5
    move p1, v5

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v6

    :goto_4
    if-nez p1, :cond_7

    iget-object p2, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p4, p4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    if-eqz p1, :cond_a

    iget-object p1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object p2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array p2, v3, [Ljava/lang/Object;

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p4, p2, v5

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v6

    iget-object p0, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v4

    const-string p0, "rcase-NameAndTypeOK.4.b"

    invoke-direct {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_9
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array p2, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p0, p2, v5

    iget-object p0, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v6

    const-string p0, "rcase-NameAndTypeOK.4.a"

    invoke-direct {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_a
    :goto_5
    invoke-static {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkIDConstraintRestriction(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    iget-short p1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    iget-short p2, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int p4, p1, p2

    if-ne p4, p2, :cond_d

    if-nez p1, :cond_b

    if-nez p2, :cond_d

    :cond_b
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object p2, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/16 p4, 0x19

    invoke-static {p1, p2, p4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    :cond_c
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array p2, v3, [Ljava/lang/Object;

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p4, p2, v5

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v6

    iget-object p0, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v4

    const-string p0, "rcase-NameAndTypeOK.7"

    invoke-direct {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_d
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array p2, v6, [Ljava/lang/Object;

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p0, p2, v5

    const-string p0, "rcase-NameAndTypeOK.6"

    invoke-direct {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_e
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p4, p2, v5

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object p0, p2, v6

    iget-object p0, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p0, p2, v4

    iget-object p0, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object p0, p2, v3

    const-string p0, "rcase-NameAndTypeOK.1"

    invoke-direct {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private static checkOccurrenceRange(IIII)Z
    .locals 0

    if-lt p0, p2, :cond_1

    const/4 p0, -0x1

    if-eq p3, p0, :cond_0

    if-eq p1, p0, :cond_1

    if-gt p1, p3, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "unbounded"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    aput-object p2, p3, v2

    const/4 p2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    const/4 p2, 0x3

    if-ne p6, p1, :cond_1

    const-string p1, "unbounded"

    goto :goto_1

    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, p3, p2

    const-string p1, "rcase-Recurse.1"

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p2

    move p5, v1

    :goto_2
    const/4 p6, 0x0

    if-lt v1, p1, :cond_5

    :goto_3
    if-lt p5, p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p4, p5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string p1, "rcase-Recurse.2"

    invoke-direct {p0, p1, p6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v3, p5

    :goto_4
    if-ge p5, p2, :cond_7

    invoke-virtual {p4, p5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    add-int/2addr v3, v2

    :try_start_0
    invoke-static {v0, p3, v4, p7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    move p5, v3

    goto :goto_2

    :catch_0
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_6
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string p1, "rcase-Recurse.2"

    invoke-direct {p0, p1, p6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_7
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string p1, "rcase-Recurse.2"

    invoke-direct {p0, p1, p6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "unbounded"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    aput-object p2, p3, v2

    const/4 p2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    const/4 p2, 0x3

    if-ne p6, p1, :cond_1

    const-string p1, "unbounded"

    goto :goto_1

    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, p3, p2

    const-string p1, "rcase-RecurseLax.1"

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p2

    move p5, v1

    :goto_2
    if-lt v1, p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v0, p5

    :goto_3
    if-ge p5, p2, :cond_5

    invoke-virtual {p4, p5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    add-int/2addr v0, v2

    :try_start_0
    invoke-static {p6, p3, v3, p7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result p5
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_4

    add-int/lit8 v0, v0, -0x1

    move p5, v0

    goto :goto_4

    :cond_4
    move p5, v0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p1, 0x0

    const-string p2, "rcase-RecurseLax.2"

    invoke-direct {p0, p2, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static checkRecurseUnordered(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "unbounded"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    aput-object p2, p3, v2

    const/4 p2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    const/4 p2, 0x3

    if-ne p6, p1, :cond_1

    const-string p1, "unbounded"

    goto :goto_1

    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, p3, p2

    const-string p1, "rcase-RecurseUnordered.1"

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p2

    new-array p5, p2, [Z

    move p6, v1

    :goto_2
    const/4 v0, 0x0

    if-lt p6, p1, :cond_6

    :goto_3
    if-lt v1, p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-boolean p1, p5, v1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string p1, "rcase-RecurseUnordered.2"

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v4, v1

    :goto_5
    if-ge v4, p2, :cond_8

    invoke-virtual {p4, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :try_start_0
    invoke-static {v3, p3, v5, p7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    aget-boolean v5, p5, v4

    if-nez v5, :cond_7

    aput-boolean v2, p5, v4

    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_7
    new-instance v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v6, "rcase-RecurseUnordered.2"

    invoke-direct {v5, v6, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    new-instance p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string p1, "rcase-RecurseUnordered.2"

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_9

    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result v1

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v1, v4, :cond_3

    invoke-static {v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v3, :cond_4

    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v1

    if-ne v1, v4, :cond_5

    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v1

    if-ne v1, v4, :cond_8

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {p0, v4, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v4

    if-eqz v4, :cond_7

    return v0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    return v2

    :cond_9
    :goto_2
    return v2
.end method

.method public static checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    sget-object p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, p0, :cond_0

    sget-object p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_3

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v0, :cond_2

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result p0

    return p0
.end method

.method public static checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v0, :cond_3

    sget-object p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, p0, :cond_2

    sget-object p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v0, :cond_4

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    check-cast p0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result p0

    return p0

    :cond_6
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result p0

    return p0
.end method

.method public static findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v1, :cond_0

    invoke-virtual {p2, v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    iget-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-ne p2, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object p0, v0, v1

    const/4 p0, 0x1

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object p1, v0, p0

    const-string p0, "cos-element-consistent"

    invoke-direct {p2, p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public static fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    array-length v0, v3

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_0
    if-gez v0, :cond_f

    new-instance v5, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v5}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v0, 0x3

    iput-short v0, v5, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    array-length v0, v3

    sub-int/2addr v0, v4

    move v7, v0

    :goto_1
    const/4 v8, 0x2

    const/4 v9, 0x0

    if-gez v7, :cond_9

    new-instance v10, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v10}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    array-length v0, v3

    sub-int/2addr v0, v4

    move v11, v0

    :goto_2
    if-gez v11, :cond_0

    return-void

    :cond_0
    aget-object v0, v3, v11

    iget-boolean v12, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    aget-object v0, v3, v11

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getUncheckedComplexTypeDecls()[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v13

    aget-object v0, v3, v11

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getUncheckedCTLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v14

    move v5, v9

    move v6, v5

    :goto_3
    array-length v0, v13

    if-lt v5, v0, :cond_2

    if-nez v12, :cond_1

    aget-object v0, v3, v11

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setUncheckedTypeNum(I)V

    aget-object v0, v3, v11

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_2
    if-nez v12, :cond_3

    aget-object v0, v13, v5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    :try_start_0
    aget-object v0, v13, v5

    aget-object v7, v13, v5

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-static {v0, v7, v10, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    aget-object v7, v14, v5

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v7, v15, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_4
    aget-object v0, v13, v5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_6

    aget-object v0, v13, v5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq v0, v7, :cond_6

    aget-object v0, v13, v5

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    if-ne v0, v8, :cond_6

    aget-object v0, v13, v5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_6

    aget-object v0, v13, v5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v7, v13, v5

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v0, :cond_4

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v14, v5

    const-string v7, "derivation-ok-restriction.5.3.2"

    new-array v15, v8, [Ljava/lang/Object;

    aget-object v8, v13, v5

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v8, v15, v9

    aget-object v8, v13, v5

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v8}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v4

    invoke-static {v2, v0, v7, v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    if-eqz v7, :cond_5

    :try_start_1
    aget-object v0, v13, v5

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v7, v13, v5

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-static {v0, v1, v7, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    aget-object v7, v14, v5

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v7, v8, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v0, v14, v5

    const-string v7, "derivation-ok-restriction.5.4.2"

    new-array v8, v4, [Ljava/lang/Object;

    aget-object v15, v13, v5

    iget-object v15, v15, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v15, v8, v9

    invoke-static {v2, v0, v7, v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    aget-object v0, v14, v5

    const-string v7, "derivation-ok-restriction.5.4.2"

    new-array v8, v4, [Ljava/lang/Object;

    aget-object v15, v13, v5

    iget-object v15, v15, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v15, v8, v9

    invoke-static {v2, v0, v7, v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_5
    aget-object v0, v13, v5

    move-object/from16 v8, p2

    invoke-virtual {v0, v8, v4}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_2
    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v7, v0

    aget-object v0, v14, v5

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v0, v15, v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move v0, v9

    :goto_6
    if-nez v12, :cond_8

    if-eqz v0, :cond_8

    add-int/lit8 v0, v6, 0x1

    aget-object v7, v13, v5

    aput-object v7, v13, v6

    move v6, v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x2

    goto/16 :goto_3

    :cond_9
    move-object/from16 v8, p2

    aget-object v0, v3, v7

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getRedefinedGroupDecls()[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v10

    aget-object v0, v3, v7

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getRGLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v11

    move v0, v9

    :goto_7
    array-length v12, v10

    if-lt v0, v12, :cond_a

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v12, v0, 0x1

    aget-object v13, v10, v0

    iget-object v0, v13, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    add-int/lit8 v14, v12, 0x1

    aget-object v12, v10, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v0, v5, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput-object v12, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    if-nez v12, :cond_c

    if-eqz v0, :cond_b

    div-int/lit8 v0, v14, 0x2

    sub-int/2addr v0, v4

    aget-object v0, v11, v0

    const-string v12, "src-redefine.6.2.2"

    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/Object;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    aput-object v13, v4, v9

    const-string v13, "rcase-Recurse.2"

    const/4 v15, 0x1

    aput-object v13, v4, v15

    invoke-static {v2, v0, v12, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 p0, v5

    move v13, v15

    const/4 v15, 0x2

    goto :goto_8

    :cond_b
    move v13, v4

    move-object/from16 p0, v5

    const/4 v15, 0x2

    goto :goto_8

    :cond_c
    move v15, v4

    if-nez v0, :cond_e

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v0

    if-nez v0, :cond_d

    div-int/lit8 v0, v14, 0x2

    sub-int/2addr v0, v15

    aget-object v0, v11, v0

    const-string v4, "src-redefine.6.2.2"

    const/4 v12, 0x2

    new-array v15, v12, [Ljava/lang/Object;

    iget-object v12, v13, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    aput-object v12, v15, v9

    const-string v12, "rcase-Recurse.2"

    const/4 v13, 0x1

    aput-object v12, v15, v13

    invoke-static {v2, v0, v4, v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 p0, v5

    const/4 v13, 0x1

    const/4 v15, 0x2

    goto :goto_8

    :cond_d
    move-object/from16 p0, v5

    move v13, v15

    const/4 v15, 0x2

    goto :goto_8

    :cond_e
    :try_start_3
    invoke-static {v5, v1, v6, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 p0, v5

    const/4 v13, 0x1

    const/4 v15, 0x2

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v0

    div-int/lit8 v12, v14, 0x2

    const/4 v15, 0x1

    sub-int/2addr v12, v15

    aget-object v15, v11, v12

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v15, v0, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v4, v11, v12

    const-string v12, "src-redefine.6.2.2"

    move-object/from16 p0, v5

    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/Object;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    aput-object v13, v5, v9

    const/4 v13, 0x1

    aput-object v0, v5, v13

    invoke-static {v2, v4, v12, v5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    move-object/from16 v5, p0

    move v4, v13

    move v0, v14

    goto/16 :goto_7

    :cond_f
    move-object/from16 v8, p2

    move v13, v4

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v0, v0, -0x1

    move v4, v13

    goto/16 :goto_0
.end method

.method private static gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V
    .locals 5

    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_3

    :cond_1
    if-ne v0, v3, :cond_5

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne p0, v2, :cond_4

    iget-object p0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt p1, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, p1

    invoke-static {v2, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v1, 0x66

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v1, 0x0

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    const/4 v1, 0x0

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    sput-object v1, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v0
.end method

.method private static getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-static {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result p0

    return p0

    :cond_2
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result p0

    return p0
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v2

    :goto_0
    if-gez v1, :cond_3

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v3

    array-length p1, v3

    sub-int/2addr p1, v2

    :goto_1
    if-gez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    aget-object p2, v3, p1

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne p2, v0, :cond_2

    aget-object p2, v3, p1

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne p2, v0, :cond_2

    return v2

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    aget-object v3, v0, v1

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_4

    aget-object v3, v0, v1

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p0

    array-length p2, p0

    sub-int/2addr p2, v1

    :goto_0
    if-gez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    aget-object v0, p0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-short p1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length p0, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z

    move-result p0

    return p0
.end method

.method private static particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v1, "cos-particle-restrict.a"

    invoke-direct {v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v1, "cos-particle-restrict.b"

    invoke-direct {v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v6, 0x3

    if-ne v4, v6, :cond_6

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v7

    if-eq v7, v0, :cond_5

    iget-short v0, v7, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-ne v0, v6, :cond_4

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move v4, v0

    goto :goto_2

    :cond_4
    move v4, v0

    goto :goto_2

    :cond_5
    move-object v7, v0

    :goto_2
    invoke-static {v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;

    move-result-object v0

    move-object/from16 v24, v7

    move-object v7, v0

    move-object/from16 v0, v24

    goto :goto_3

    :cond_6
    move-object v7, v5

    :goto_3
    iget v9, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v10, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v13, 0x1

    if-eqz v1, :cond_8

    if-ne v4, v13, :cond_8

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v14, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-short v15, v14, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    if-ne v15, v13, :cond_8

    invoke-virtual {v1, v14}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v15

    array-length v5, v15

    if-lez v5, :cond_8

    new-instance v5, Ljava/util/Vector;

    array-length v1, v15

    add-int/2addr v1, v13

    invoke-direct {v5, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    :goto_4
    array-length v4, v15

    if-lt v1, v4, :cond_7

    invoke-static {v5, v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v16, v5

    move v1, v9

    move v4, v10

    const/16 v5, 0x65

    const/16 v19, 0x0

    goto :goto_5

    :cond_7
    aget-object v4, v15, v1

    invoke-static {v5, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v19, v1

    move v5, v4

    move-object/from16 v16, v7

    const/4 v1, -0x2

    const/4 v4, -0x2

    :goto_5
    iget-short v7, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-ne v7, v6, :cond_b

    iget-object v7, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v7, v7, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v14

    if-eq v14, v2, :cond_9

    iget-short v7, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-ne v7, v6, :cond_a

    iget-object v2, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v7, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    goto :goto_6

    :cond_9
    move-object v14, v2

    :cond_a
    :goto_6
    invoke-static {v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;

    move-result-object v2

    goto :goto_7

    :cond_b
    move-object v14, v2

    const/4 v2, 0x0

    :goto_7
    iget v6, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v15, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz v3, :cond_d

    if-ne v7, v13, :cond_d

    iget-object v8, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v8, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-short v11, v8, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    if-ne v11, v13, :cond_d

    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v11

    array-length v12, v11

    if-lez v12, :cond_d

    new-instance v12, Ljava/util/Vector;

    array-length v2, v11

    add-int/2addr v2, v13

    invoke-direct {v12, v2}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_8
    array-length v3, v11

    if-lt v2, v3, :cond_c

    invoke-static {v12, v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v20, v12

    move v2, v13

    const/16 v7, 0x65

    const/16 v23, 0x0

    goto :goto_9

    :cond_c
    aget-object v3, v11, v2

    invoke-static {v12, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 v20, v2

    move-object/from16 v23, v3

    const/4 v2, 0x0

    :goto_9
    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    return v2

    :pswitch_0
    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "in particleValidRestriction"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Internal-Error"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    move-object/from16 v8, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move v13, v6

    move v14, v15

    move-object/from16 v15, v23

    invoke-static/range {v8 .. v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    return v2

    :pswitch_2
    const/4 v3, -0x2

    if-ne v1, v3, :cond_e

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v1

    move/from16 v17, v1

    goto :goto_a

    :cond_e
    move/from16 v17, v1

    :goto_a
    if-ne v4, v3, :cond_f

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v0

    move/from16 v18, v0

    goto :goto_b

    :cond_f
    move/from16 v18, v4

    :goto_b
    move-object/from16 v20, v14

    move/from16 v21, v6

    move/from16 v22, v15

    move/from16 v23, p4

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    return v2

    :pswitch_3
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "all:choice,sequence,elt"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "cos-particle-restrict.2"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_4
    const/4 v3, 0x0

    packed-switch v7, :pswitch_data_4

    packed-switch v7, :pswitch_data_5

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "in particleValidRestriction"

    aput-object v2, v1, v3

    const-string v2, "Internal-Error"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_5
    move-object/from16 v8, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move v13, v6

    move v14, v15

    move-object/from16 v15, v23

    invoke-static/range {v8 .. v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseUnordered(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    return v2

    :pswitch_6
    move-object/from16 v8, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move v13, v6

    move v14, v15

    move-object/from16 v15, v23

    invoke-static/range {v8 .. v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    return v2

    :pswitch_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int v17, v9, v0

    const/4 v0, -0x1

    if-ne v10, v0, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/2addr v10, v0

    :goto_c
    move/from16 v18, v10

    move/from16 v21, v6

    move/from16 v22, v15

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkMapAndSum(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    return v2

    :pswitch_8
    const/4 v3, -0x2

    if-ne v1, v3, :cond_11

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v1

    move/from16 v17, v1

    goto :goto_d

    :cond_11
    move/from16 v17, v1

    :goto_d
    if-ne v4, v3, :cond_12

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v0

    move/from16 v18, v0

    goto :goto_e

    :cond_12
    move/from16 v18, v4

    :goto_e
    move-object/from16 v20, v14

    move/from16 v21, v6

    move/from16 v22, v15

    move/from16 v23, p4

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    return v2

    :pswitch_9
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "seq:elt"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "cos-particle-restrict.2"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_a
    const/4 v3, 0x0

    packed-switch v7, :pswitch_data_6

    packed-switch v7, :pswitch_data_7

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "in particleValidRestriction"

    aput-object v2, v1, v3

    const-string v2, "Internal-Error"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_b
    move-object/from16 v8, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move v13, v6

    move v14, v15

    move-object/from16 v15, v23

    invoke-static/range {v8 .. v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    return v2

    :pswitch_c
    const/4 v3, -0x2

    if-ne v1, v3, :cond_13

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v1

    move/from16 v17, v1

    goto :goto_f

    :cond_13
    move/from16 v17, v1

    :goto_f
    if-ne v4, v3, :cond_14

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v0

    move/from16 v18, v0

    goto :goto_10

    :cond_14
    move/from16 v18, v4

    :goto_10
    move-object/from16 v20, v14

    move/from16 v21, v6

    move/from16 v22, v15

    move/from16 v23, p4

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    return v2

    :pswitch_d
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "choice:all,sequence,elt"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "cos-particle-restrict.2"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_e
    const/4 v3, 0x0

    packed-switch v7, :pswitch_data_8

    packed-switch v7, :pswitch_data_9

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "in particleValidRestriction"

    aput-object v2, v1, v3

    const-string v2, "Internal-Error"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_f
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object v8, v0

    check-cast v8, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object v11, v0

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move v12, v6

    move v13, v15

    invoke-static/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSSubset(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;II)V

    return v2

    :pswitch_10
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "any:choice,sequence,all,elt"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "cos-particle-restrict.2"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_11
    const/4 v3, 0x0

    packed-switch v7, :pswitch_data_a

    packed-switch v7, :pswitch_data_b

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v1, v13, [Ljava/lang/Object;

    const-string v2, "in particleValidRestriction"

    aput-object v2, v1, v3

    const-string v2, "Internal-Error"

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_12
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v16, v1

    move/from16 v21, v6

    move/from16 v22, v15

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    return v2

    :pswitch_13
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v16, v1

    move/from16 v21, v6

    move/from16 v22, v15

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    return v2

    :pswitch_14
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object v8, v0

    check-cast v8, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object v11, v0

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move v12, v6

    move v13, v15

    move/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSCompat(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;IIZ)V

    return v2

    :pswitch_15
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object v8, v0

    check-cast v8, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object v11, v0

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move v12, v6

    move v13, v15

    invoke-static/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNameAndTypeOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSElementDecl;II)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_a
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x65
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x65
        :pswitch_b
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x65
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x65
        :pswitch_13
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private static removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;
    .locals 4

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v1

    invoke-static {v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v2, "http://www.w3.org/TR/xml-schema-1"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "http://www.w3.org/TR/xml-schema-1"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :goto_0
    return-void
.end method
