.class public Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
.super Ljava/lang/Object;
.source "CMBuilder.java"


# static fields
.field private static final fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;


# instance fields
.field private fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fLeafCount:I

.field private final fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

.field private fParticleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    return-void
.end method

.method private buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6

    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v2, v4, :cond_6

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v2, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    if-ne v1, v3, :cond_1

    if-eq v0, v3, :cond_2

    :cond_1
    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object p1, p1, v4

    invoke-direct {p0, p1, v1, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    return-object p1

    :cond_2
    move v0, v4

    :goto_0
    iget v1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v4, v1, :cond_3

    if-eqz v5, :cond_6

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v2, 0x65

    if-ne v1, v2, :cond_6

    iget p1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v0, p1, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v5}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-nez v5, :cond_4

    move-object v5, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v3, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v2, v3, v5, v1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v1

    move-object v5, v1

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object v5

    :cond_7
    :goto_3
    invoke-direct {p0, p1, v1, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    return-object p1
.end method

.method private buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 11

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short p3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {p2, p3, p1, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-ne p3, v0, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short p3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {p2, p3, p1, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, -0x1

    if-nez p2, :cond_2

    if-ne p3, v2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short p3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {p2, p3, p1, v0, v2}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    if-ne p2, v0, :cond_3

    if-ne p3, v2, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short p3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {p2, p3, p1, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p2, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v5, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v6, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v9, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 p1, v9, 0x1

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v10, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 p1, v10, 0x1

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v10}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMRepeatingLeafNode(ILjava/lang/Object;IIII)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    if-nez p2, :cond_4

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p2, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 9

    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-le v1, v4, :cond_2

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->getMaxOccursUnbounded()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-le v0, v4, :cond_4

    move v0, v2

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    :cond_4
    :goto_2
    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v7, 0x0

    if-eq v6, v2, :cond_a

    if-ne v6, v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x3

    if-ne v6, v2, :cond_b

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    move v2, v3

    :goto_3
    iget v4, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v3, v4, :cond_7

    if-eqz v7, :cond_b

    iget-short p2, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v3, 0x65

    if-ne p2, v3, :cond_6

    iget p1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, p1, :cond_6

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    :cond_6
    invoke-direct {p0, v7, v1, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    invoke-virtual {v7, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setIsCompactUPAModel(Z)V

    goto :goto_6

    :cond_7
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v4, v3

    invoke-direct {p0, v4, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    if-nez v7, :cond_8

    move-object v7, v4

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v6, v8, v7, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v4

    move-object v7, v4

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {p2, v2, p1, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setIsCompactUPAModel(Z)V

    :cond_b
    :goto_6
    return-object v7
.end method

.method private copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_2
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->type()I

    move-result v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, p1, v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    :cond_5
    :goto_2
    return-object p1
.end method

.method private expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    if-nez p2, :cond_1

    if-ne p3, v0, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    if-nez p2, :cond_2

    if-ne p3, v2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 p3, 0x4

    invoke-virtual {p2, p3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    if-ne p2, v0, :cond_3

    if-ne p3, v2, :cond_3

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p2, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/16 v4, 0x66

    if-ne p3, v2, :cond_4

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p3, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {v1, v4, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    if-lez p2, :cond_5

    invoke-direct {p0, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-le p3, p2, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v5, v1, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    if-nez v3, :cond_6

    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p3, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p3, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {v1, v4, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v3

    :goto_1
    return-object p1
.end method

.method private multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    div-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v3, 0x66

    invoke-direct {p0, p1, v1, p3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p3

    sub-int/2addr p2, v1

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {v2, v3, p3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    return-object p1
.end method

.method private useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 5

    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/4 v2, 0x0

    if-ne v1, v3, :cond_3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_0
    iget v1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v0, v3, :cond_6

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object p1, p1, v2

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_4
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-ne v0, v3, :cond_5

    iget p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne p1, v3, :cond_5

    return v3

    :cond_5
    return v2

    :cond_6
    iget p1, p1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    :cond_8
    :goto_2
    return v3
.end method


# virtual methods
.method createAllCM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 6

    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;

    iget p1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    invoke-direct {v1, p1, v4}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;-><init>(ZI)V

    move p1, v3

    :goto_1
    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt p1, v4, :cond_2

    return-object v1

    :cond_2
    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v4, p1

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v5, v5, p1

    iget v5, v5, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v1, v4, v5}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->addElement(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method createDFACM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p2, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-direct {p2, p1, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;-><init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    return-object p2
.end method

.method public getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez p1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    return-object p1

    :cond_1
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->createAllCM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->createDFACM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->resetNodeCount()V

    if-nez p1, :cond_3

    sget-object p1, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method
