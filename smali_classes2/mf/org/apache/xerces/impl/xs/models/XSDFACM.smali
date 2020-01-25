.class public Lmf/org/apache/xerces/impl/xs/models/XSDFACM;
.super Ljava/lang/Object;
.source "XSDFACM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_VALIDATE_CONTENT:Z = false

.field private static time:J


# instance fields
.field private fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

.field private fElemMap:[Ljava/lang/Object;

.field private fElemMapId:[I

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fIsCompactedForUPA:Z

.field private fLeafCount:I

.field private fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

.field private fLeafListType:[I

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTableSize:I

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result p2

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-void
.end method

.method private buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-instance v2, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4, v3, v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    new-instance v6, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    const/16 v7, 0x66

    move-object/from16 v8, p1

    invoke-direct {v6, v7, v8, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    iput-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v6, v2, [Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    iput-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    new-array v2, v2, [I

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v2, v2, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-lt v6, v7, :cond_16

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v7, v6, [Ljava/lang/Object;

    iput-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    new-array v7, v6, [I

    iput-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    new-array v6, v6, [I

    iput-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move v8, v2

    move-object v9, v4

    :goto_1
    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-lt v8, v6, :cond_10

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    sub-int/2addr v7, v5

    iput v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    add-int/2addr v6, v7

    new-array v6, v6, [I

    move v7, v2

    move v8, v7

    :goto_2
    iget v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v7, v10, :cond_d

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    mul-int/lit8 v7, v7, 0x4

    new-array v8, v7, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-array v10, v7, [Z

    iput-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    new-array v10, v7, [[I

    iput-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v10

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v12

    aput-object v12, v11, v2

    aput-object v10, v8, v2

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move v11, v7

    move v7, v5

    move v5, v2

    :goto_3
    if-lt v5, v7, :cond_4

    if-eqz v9, :cond_3

    new-array v1, v7, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    move v1, v2

    :goto_4
    if-lt v1, v7, :cond_0

    goto :goto_7

    :cond_0
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v3, v3, v1

    move v5, v2

    :goto_5
    array-length v6, v3

    if-lt v5, v6, :cond_1

    goto :goto_6

    :cond_1
    aget v6, v3, v5

    if-ne v1, v6, :cond_2

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v5, v9, v5

    aput-object v5, v3, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    :goto_7
    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    return-void

    :cond_4
    aget-object v12, v8, v5

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v13, v13, v5

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    invoke-virtual {v12, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v15

    aput-boolean v15, v14, v5

    add-int/lit8 v14, v5, 0x1

    move-object v5, v4

    move v15, v7

    move-object v7, v8

    move v4, v11

    move v8, v2

    move v11, v8

    :goto_8
    iget v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v11, v2, :cond_5

    move v11, v4

    move-object v8, v7

    move v5, v14

    move v7, v15

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    if-nez v5, :cond_6

    new-instance v2, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-direct {v2, v5}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    goto :goto_9

    :cond_6
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    move-object v2, v5

    :goto_9
    add-int/lit8 v5, v8, 0x1

    aget v8, v6, v8

    :goto_a
    if-ne v8, v3, :cond_b

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_7

    move v8, v15

    goto :goto_b

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_b
    if-ne v8, v15, :cond_8

    aput-object v2, v7, v15

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v16

    aput-object v16, v3, v15

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    :cond_8
    aput v8, v13, v11

    if-ne v15, v4, :cond_9

    move v3, v1

    move-object v8, v2

    int-to-double v1, v4

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v1, v1, v16

    double-to-int v1, v1

    new-array v2, v1, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move/from16 v16, v3

    new-array v3, v1, [Z

    move-object/from16 v17, v8

    new-array v8, v1, [[I

    move/from16 v18, v1

    const/4 v1, 0x0

    invoke-static {v7, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    invoke-static {v7, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    invoke-static {v7, v1, v8, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    iput-object v8, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object v7, v2

    move/from16 v4, v18

    goto :goto_c

    :cond_9
    move/from16 v16, v1

    move-object/from16 v17, v2

    const/4 v1, 0x0

    goto :goto_c

    :cond_a
    move/from16 v16, v1

    const/4 v1, 0x0

    move-object/from16 v17, v2

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move v8, v5

    move/from16 v1, v16

    move-object/from16 v5, v17

    const/4 v3, -0x1

    goto/16 :goto_8

    :cond_b
    move/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v12, v8}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_c
    add-int/lit8 v3, v5, 0x1

    aget v8, v6, v5

    move v5, v3

    move/from16 v1, v16

    const/4 v3, -0x1

    goto/16 :goto_a

    :cond_d
    move/from16 v16, v1

    move v1, v2

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    aget v2, v2, v7

    move v3, v1

    :goto_d
    iget v4, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-lt v3, v4, :cond_e

    add-int/lit8 v2, v8, 0x1

    const/4 v4, -0x1

    aput v4, v6, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    move v3, v4

    const/4 v4, 0x0

    move v2, v1

    move/from16 v1, v16

    goto/16 :goto_2

    :cond_e
    const/4 v4, -0x1

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v10

    if-ne v2, v10, :cond_f

    add-int/lit8 v10, v8, 0x1

    aput v3, v6, v8

    move v8, v10

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_10
    move/from16 v16, v1

    move v1, v2

    move v4, v3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v8

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v2

    move v6, v1

    :goto_e
    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v6, v7, :cond_11

    goto :goto_f

    :cond_11
    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    aget v7, v7, v6

    if-ne v2, v7, :cond_15

    :goto_f
    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ne v6, v7, :cond_14

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v6, v6, v8

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v7

    instance-of v7, v6, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    if-eqz v7, :cond_13

    if-nez v9, :cond_12

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v7, v7, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    move-object v9, v7

    :cond_12
    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-instance v10, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    check-cast v6, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    invoke-direct {v10, v6, v7}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;-><init>(Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;I)V

    aput-object v10, v9, v7

    :cond_13
    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aget v10, v10, v8

    aput v10, v6, v7

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    aput v2, v6, v7

    add-int/2addr v7, v5

    iput v7, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    :cond_14
    add-int/lit8 v8, v8, 0x1

    move v2, v1

    move/from16 v1, v16

    move/from16 v19, v4

    move-object v4, v3

    move/from16 v3, v19

    goto/16 :goto_1

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_16
    move/from16 v16, v1

    move v1, v2

    move-object/from16 v19, v4

    move v4, v3

    move-object/from16 v3, v19

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    new-instance v8, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-direct {v8, v7}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    move v2, v1

    move/from16 v1, v16

    move/from16 v19, v4

    move-object v4, v3

    move/from16 v3, v19

    goto/16 :goto_0
.end method

.method private calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    :goto_0
    iget p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-lt v2, p1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_3

    :cond_5
    :goto_1
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object p1

    :goto_2
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-lt v2, v1, :cond_7

    :cond_6
    :goto_3
    return-void

    :cond_7
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    throw p1
.end method

.method private dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ImplementationMessages.VAL_NIICM"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Choice Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Seq Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto/16 :goto_2

    :sswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Rep Node "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Nullable "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "firstPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " lastPos="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto/16 :goto_2

    :sswitch_2
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Any Node: "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "firstPos="

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " lastPos="

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_3
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Leaf: (pos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(elemIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " Nullable "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "firstPos="

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " lastPos="

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method private makeDefStateList()[I
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, -0x1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object p1, v2, v0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v1, p1, v0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object p1, v2, v0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v1, p1, v0

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ImplementationMessages.VAL_NIICM"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_8

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    move v3, v1

    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    :goto_2
    iget v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v6, v7, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v8, v7, v2

    aget v8, v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    aget-object v7, v7, v2

    aget v7, v7, v6

    if-eq v7, v9, :cond_7

    aget-object v7, v0, v3

    aget-byte v7, v7, v6

    if-nez v7, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v8, v7, v3

    aget-object v7, v7, v6

    invoke-static {v8, v7, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v7, :cond_5

    aget-object v7, v7, v2

    if-eqz v7, :cond_5

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v8, v8, v2

    aget v8, v8, v3

    if-ne v8, v2, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    move v8, v1

    :goto_3
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v10, v10, v2

    aget v10, v10, v6

    if-ne v10, v2, :cond_4

    move v10, v5

    goto :goto_4

    :cond_4
    move v10, v1

    :goto_4
    xor-int/2addr v8, v10

    if-eqz v8, :cond_5

    iget v8, v7, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    iget v7, v7, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-ne v8, v7, :cond_5

    aget-object v7, v0, v3

    aput-byte v9, v7, v6

    goto :goto_5

    :cond_5
    aget-object v7, v0, v3

    aput-byte v5, v7, v6

    goto :goto_5

    :cond_6
    aget-object v7, v0, v3

    aput-byte v9, v7, v6

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    :goto_6
    move p1, v1

    :goto_7
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    const/4 v3, 0x2

    if-lt p1, v2, :cond_c

    move p1, v1

    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt p1, v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, p1

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v3, :cond_b

    :cond_a
    return v5

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_c
    move v2, v1

    :goto_9
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v2, v4, :cond_d

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_d
    aget-object v4, v0, p1

    aget-byte v4, v4, v2

    if-eq v4, v5, :cond_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object p1, v4, p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    const-string p1, "cos-nonambig"

    invoke-direct {v0, p1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public endContentModel([I)Z
    .locals 3

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v2, :cond_0

    aget-object v1, v2, v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    aget p1, p1, v2

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p2, p1, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x0

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    add-int/2addr p4, v4

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-lt p4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v3, v3, v1

    aget v3, v3, p4

    if-ne v3, v7, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v5, v5, p4

    if-ne v5, v4, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v2, v2, p4

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, p4

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v2, v1, p4

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ne p4, v1, :cond_4

    aget p4, p2, v0

    aput p4, p2, v4

    aput v7, p2, v0

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    aput v3, p2, v0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object p1, p1, v3

    if-eqz p1, :cond_6

    iget p1, p1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne p4, p1, :cond_5

    move v0, v4

    :cond_5
    aput v0, p2, v6

    :cond_6
    return-object v2
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isCompactedForUPA()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    return v0
.end method

.method public isFinalState(I)Z
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean p1, v0, p1

    :goto_0
    return p1
.end method

.method public occurenceInfo([I)[I
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-gez v1, :cond_0

    aget v1, p1, v2

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v3, v1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    new-array v3, v3, [I

    iget v4, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    aput v4, v3, v0

    iget v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    aput v0, v3, v2

    const/4 v0, 0x2

    aget p1, p1, v0

    aput p1, v3, v0

    const/4 p1, 0x3

    iget v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    aput v0, v3, p1

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    if-ne v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x0

    move v4, v0

    move-object v5, v2

    move v2, v4

    :goto_0
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v2, v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    if-ne v4, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v6, v6, v2

    if-ne v6, v8, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v5}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v5

    if-eqz v5, :cond_b

    goto :goto_1

    :cond_3
    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v2

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, v2

    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ne v2, v6, :cond_4

    aget v1, p2, v0

    aput v1, p2, v8

    aput v3, p2, v0

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v6, :cond_a

    aget-object v9, v6, v1

    if-eqz v9, :cond_8

    if-ne v1, v4, :cond_5

    aget v1, p2, v7

    add-int/2addr v1, v8

    aput v1, p2, v7

    iget v6, v9, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-le v1, v6, :cond_a

    iget v1, v9, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-eq v1, v3, :cond_a

    invoke-virtual {p0, p1, p2, p3, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    aget v1, p2, v7

    iget v6, v9, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge v1, v6, :cond_6

    aget v1, p2, v0

    aput v1, p2, v8

    aput v3, p2, v0

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object p1, p1, v4

    if-eqz p1, :cond_a

    iget p1, p1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne v2, p1, :cond_7

    goto :goto_2

    :cond_7
    move v8, v0

    :goto_2
    aput v8, p2, v7

    goto :goto_4

    :cond_8
    aget-object p1, v6, v4

    if-eqz p1, :cond_a

    iget p1, p1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne v2, p1, :cond_9

    goto :goto_3

    :cond_9
    move v8, v0

    :goto_3
    aput v8, p2, v7

    :cond_a
    :goto_4
    aput v4, p2, v0

    return-object v5

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_6
    if-ne v1, v3, :cond_d

    aput v2, p2, v0

    :cond_d
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public startContentModel()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    return-object v0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 6

    const/4 v0, 0x0

    aget v1, p1, v0

    if-gez v1, :cond_0

    const/4 v1, 0x1

    aget v1, p1, v1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v2, :cond_1

    aget-object v2, v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    aget p1, p1, v3

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v0, v4, :cond_2

    return-object v3

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    if-eqz v2, :cond_4

    if-ne v1, v4, :cond_3

    iget v4, v2, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-lt p1, v4, :cond_4

    iget v4, v2, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_3
    iget v4, v2, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge p1, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
