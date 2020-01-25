.class public final Lmf/org/apache/xerces/impl/xs/XSModelImpl;
.super Ljava/util/AbstractList;
.source "XSModelImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSModel;
.implements Lmf/org/apache/xerces/xs/XSNamespaceItemList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;
    }
.end annotation


# static fields
.field private static final GLOBAL_COMP:[Z

.field private static final MAX_COMP_IDX:S = 0x10s


# instance fields
.field private fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private final fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

.field private final fGrammarCount:I

.field private final fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

.field private final fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

.field private final fHasIDC:Z

.field private final fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

.field private final fNamespaces:[Ljava/lang/String;

.field private final fNamespacesList:Lmf/org/apache/xerces/xs/StringList;

.field private final fSubGroupMap:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)V

    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    new-array v4, v4, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-lt v7, v2, :cond_a

    if-nez v8, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    aput-object v1, v5, v2

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getS4SGrammar(S)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    aput-object v1, v4, v2

    move v2, v3

    :cond_0
    move v10, v6

    :goto_1
    if-lt v10, v2, :cond_3

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    mul-int/lit8 v3, v2, 0x2

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    move v1, v6

    :goto_2
    if-lt v6, v2, :cond_1

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fHasIDC:Z

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    const/16 v1, 0x11

    new-array v3, v1, [Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const-class v2, Lmf/org/apache/xerces/xs/XSNamedMap;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lmf/org/apache/xerces/xs/XSNamedMap;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespacesList:Lmf/org/apache/xerces/xs/StringList;

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->buildSubGroups()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fSubGroupMap:Lmf/org/apache/xerces/util/SymbolHash;

    return-void

    :cond_1
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->hasIDConstraints()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v9

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    aget-object v1, v4, v10

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v11

    if-nez v11, :cond_4

    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v9

    :goto_3
    move v12, v1

    move v13, v2

    move-object v15, v4

    move-object v14, v5

    :goto_4
    if-gez v12, :cond_5

    add-int/lit8 v10, v10, 0x1

    move v2, v13

    move-object v5, v14

    move-object v4, v15

    goto :goto_1

    :cond_5
    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move v2, v6

    :goto_5
    if-lt v2, v13, :cond_6

    goto :goto_6

    :cond_6
    aget-object v3, v15, v2

    if-ne v1, v3, :cond_9

    :goto_6
    if-ne v2, v13, :cond_8

    array-length v2, v15

    if-ne v13, v2, :cond_7

    mul-int/lit8 v2, v13, 0x2

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v14, v6, v3, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-static {v15, v6, v2, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v15, v2

    move-object v14, v3

    :cond_7
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v13

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    aget-object v10, v1, v7

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v7

    aput-object v10, v4, v7

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v11, v10, :cond_b

    move v8, v9

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)I
    .locals 0

    iget p0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    return p0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-object p0
.end method

.method private buildSubGroups()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 9

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->getGlobalElements()Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v4

    new-instance v5, Lmf/org/apache/xerces/util/SymbolHash;

    mul-int/lit8 v2, v4, 0x2

    invoke-direct {v5, v2}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    :goto_1
    if-lt v1, v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v6

    array-length v7, v6

    if-lez v7, :cond_1

    new-instance v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v8, v6

    invoke-direct {v7, v6, v8}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_2

    :cond_1
    sget-object v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_2
    invoke-virtual {v5, v2, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private buildSubGroups_Org()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 9

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v4

    new-instance v5, Lmf/org/apache/xerces/util/SymbolHash;

    mul-int/lit8 v2, v4, 0x2

    invoke-direct {v5, v2}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    :goto_1
    if-lt v1, v4, :cond_0

    return-object v5

    :cond_0
    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v6

    array-length v7, v6

    if-lez v7, :cond_1

    new-instance v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v8, v6

    invoke-direct {v7, v6, v8}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_2

    :cond_1
    sget-object v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_2
    invoke-virtual {v5, v2, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getGlobalElements()Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    .locals 6

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v2, v4, :cond_2

    if-nez v3, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0

    :cond_0
    new-array v4, v3, [Lmf/org/apache/xerces/xs/XSObject;

    move v2, v1

    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v1, v5, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v4, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0

    :cond_1
    aget-object v5, v0, v1

    invoke-virtual {v5, v4, v2}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v4, v4, v2

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v4, v0, v2

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private listIterator0(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;-><init>(Lmf/org/apache/xerces/impl/xs/XSModelImpl;I)V

    return-object v0
.end method

.method private static final null2EmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    :try_start_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v1, v3, :cond_4

    if-nez v2, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    new-array v1, v2, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move v2, v0

    move v3, v2

    :goto_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v2, v4, :cond_2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v4, v4, v2

    iget v5, v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-lez v5, :cond_3

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v6, v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-static {v5, v0, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    add-int/2addr v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v1

    iget v3, v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttributeDeclaration(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    return-object p1
.end method

.method public getAttributeDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeGroup(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;

    return-object p1
.end method

.method public getAttributeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;
    .locals 5

    monitor-enter p0

    if-lez p1, :cond_5

    const/16 v0, 0x10

    if-gt p1, v0, :cond_5

    :try_start_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    new-array v1, v1, [Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v2, v2, p1

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v2, v3, :cond_3

    const/16 v2, 0xf

    if-eq p1, v2, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v2, v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V

    aput-object v2, v0, p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v2, v3, v1, v4, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;-><init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;IS)V

    aput-object v2, v0, p1

    goto :goto_3

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_2

    :pswitch_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_2

    :pswitch_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_2

    :pswitch_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_2

    :pswitch_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_2

    :pswitch_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v3, v1, v2

    goto :goto_2

    :pswitch_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v3, v1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :goto_4
    :try_start_1
    sget-object p1, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getComponentsByNamespace(SLjava/lang/String;)Lmf/org/apache/xerces/xs/XSNamedMap;
    .locals 4

    monitor-enter p0

    if-lez p1, :cond_a

    const/16 v0, 0x10

    if-gt p1, v0, :cond_a

    :try_start_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v1, v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_9

    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ne v1, v2, :cond_5

    sget-object p1, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v2, v2, v1

    aget-object v2, v2, p1

    if-nez v2, :cond_8

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    :goto_3
    const/16 v3, 0xf

    if-eq p1, v3, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v0, v0, v1

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    invoke-direct {v3, p2, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V

    aput-object v3, v0, p1

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v0, v0, v1

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;

    invoke-direct {v3, p2, v2, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;S)V

    aput-object v3, v0, p1

    :cond_8
    :goto_5
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object p2, p2, v1

    aget-object p1, p2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    :goto_6
    :try_start_2
    sget-object p1, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getElementDeclaration(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSElementDeclaration;

    return-object p1
.end method

.method public getElementDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    return-object p1
.end method

.method public getIDCDefinition(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSIDCDefinition;

    return-object p1
.end method

.method public getIDCDefinition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    return-object p1
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    return v0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSModelGroupDefinition;

    return-object p1
.end method

.method public getModelGroupDefinition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object p1

    return-object p1
.end method

.method public getNamespaceItems()Lmf/org/apache/xerces/xs/XSNamespaceItemList;
    .locals 0

    return-object p0
.end method

.method public getNamespaces()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespacesList:Lmf/org/apache/xerces/xs/StringList;

    return-object v0
.end method

.method public getNotationDeclaration(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    return-object p1
.end method

.method public getNotationDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p1

    return-object p1
.end method

.method public getSubstitutionGroup(Lmf/org/apache/xerces/xs/XSElementDeclaration;)Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fSubGroupMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSObjectList;

    return-object p1
.end method

.method public getTypeDefinition(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object p1
.end method

.method public getTypeDefinition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    return-object p1
.end method

.method public hasIDConstraints()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fHasIDC:Z

    return v0
.end method

.method public item(I)Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->toArray0([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->toArray0([Ljava/lang/Object;)V

    array-length v0, p1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method
