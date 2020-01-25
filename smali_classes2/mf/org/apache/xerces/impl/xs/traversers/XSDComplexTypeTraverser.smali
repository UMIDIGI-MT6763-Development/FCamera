.class Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.source "XSDComplexTypeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GLOBAL_NUM:I = 0xb

.field private static fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private static fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;


# instance fields
.field private fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

.field private fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

.field private fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fBlock:S

.field private fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field private fContentType:S

.field private fDerivedBy:S

.field private fFinal:S

.field private fGlobalStore:[Ljava/lang/Object;

.field private fGlobalStorePos:I

.field private fIsAbstract:Z

.field private fName:Ljava/lang/String;

.field private fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private fTargetNamespace:Ljava/lang/String;

.field private fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    const/4 p2, 0x2

    iput-short p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 p2, 0x0

    iput-short p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iput-short p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    iput-short p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    return-void
.end method

.method private addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_0

    :cond_1
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v2, v0

    sub-int/2addr v2, v1

    aput-object p1, v0, v2

    return-void
.end method

.method private contentBackup()V
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    array-length v3, v2

    if-ne v0, v3, :cond_1

    add-int/lit8 v3, v0, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aput-object v2, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v2, Ljava/lang/Integer;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    shl-int/lit8 v3, v3, 0x10

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v2, Ljava/lang/Integer;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    shl-int/lit8 v3, v3, 0x10

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v2, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    aput-object v2, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v2, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v2, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v2, v0, v1

    return-void
.end method

.method private contentRestore()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v0, v1

    check-cast v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v0, v1

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v0, v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v0, v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v0, v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-void
.end method

.method private genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#AnonType_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getErrorContent()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 4

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v1, 0x2

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    const/4 v1, 0x0

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v2, -0x1

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v3, 0x66

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v0, v3, v1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v0
.end method

.method private static getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v1, 0x2

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v0
.end method

.method private handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_0
    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 p1, 0x3

    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorContent()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object p2

    iput-object p2, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-void
.end method

.method private isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lt v3, v1, :cond_3

    if-eqz p4, :cond_2

    iget-object p4, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez p4, :cond_0

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object p1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_1

    :cond_0
    iget-object p4, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz p4, :cond_2

    iget-object p4, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {p4, p1, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performUnionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object p1

    iput-object p1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object p1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v2

    const-string p3, "src-ct.5"

    invoke-direct {p1, p3, p2, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v6, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v6

    const/4 v7, 0x2

    if-nez v6, :cond_5

    invoke-virtual {p2, v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, v2

    aput-object v6, p2, v4

    iget-object p3, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v7

    const-string p3, "ct-props-correct.5"

    invoke-direct {p1, p3, p2, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw p1

    :cond_5
    if-eq v6, v5, :cond_6

    if-eqz p4, :cond_6

    const-string v8, "ct-props-correct.4"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p3, v7, v2

    iget-object v9, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    invoke-virtual {p0, v8, v7, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    invoke-virtual {p2, v6, v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->replaceAttributeUse(Lmf/org/apache/xerces/xs/XSAttributeUse;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_7

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual {v0, p1, v11, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    move-object v2, v1

    move v1, v9

    goto/16 :goto_3

    :cond_0
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    iget-object v5, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v1, :cond_1

    move v1, v10

    goto :goto_0

    :cond_1
    move v1, v9

    :goto_0
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto/16 :goto_3

    :cond_2
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    iget-object v5, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v1, :cond_3

    move v1, v10

    goto :goto_1

    :cond_3
    move v1, v9

    :goto_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto :goto_3

    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v4, 0x8

    iget-object v5, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v1, :cond_5

    move v1, v10

    goto :goto_2

    :cond_5
    move v1, v9

    :goto_2
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v7

    move-object v0, v8

    move v1, v9

    goto :goto_3

    :cond_7
    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object v0, v8

    move-object v2, v0

    move v1, v9

    :goto_3
    if-eqz v1, :cond_9

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    :cond_8
    if-nez v1, :cond_9

    move-object v0, v8

    :cond_9
    if-nez v0, :cond_a

    if-eqz p2, :cond_a

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    :cond_a
    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v7, 0x2

    if-nez v0, :cond_b

    iput-short v9, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto :goto_4

    :cond_b
    if-eqz p2, :cond_c

    const/4 v0, 0x3

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto :goto_4

    :cond_c
    iput-short v7, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    :goto_4
    if-eqz v2, :cond_f

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v5, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_d

    if-nez p3, :cond_f

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    goto :goto_5

    :cond_d
    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "s4s-elt-invalid-content.1"

    invoke-direct {v1, v3, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_e
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v1, v9

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    const-string v3, "s4s-elt-invalid-content.1"

    invoke-direct {v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_f
    :goto_5
    return-void
.end method

.method private traverseComplexContent(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v1, v10, v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v11, v1

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    :goto_0
    const/4 v1, 0x0

    iput-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7, v12, v10, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v10

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_2
    :goto_1
    const/4 v13, 0x1

    const/4 v14, 0x2

    if-eqz v12, :cond_1e

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-short v14, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto :goto_2

    :cond_3
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iput-short v13, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    :goto_2
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_1c

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v12, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v15

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v1, v15, v1

    check-cast v1, Lmf/org/apache/xerces/xni/QName;

    if-eqz v1, :cond_1b

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v2, 0x7

    invoke-virtual {v0, v8, v2, v1, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_1a

    instance-of v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v1, :cond_19

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v1

    iget-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-short v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-ne v0, v13, :cond_4

    const-string v0, "cos-ct-extends.1.1"

    goto :goto_3

    :cond_4
    const-string v0, "derivation-ok-restriction.1"

    :goto_3
    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v14, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v2, v9

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-direct {v1, v0, v2, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_5
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v7, v12, v15, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    goto :goto_4

    :cond_6
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v15

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_7
    :goto_4
    if-eqz v12, :cond_a

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v1, v14, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v2, v1, v9

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v2, v1, v13

    const-string v2, "s4s-elt-invalid-content.1"

    invoke-direct {v0, v2, v1, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_9
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v15

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_a
    :goto_5
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object v2, v12

    move v3, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v3, 0x3

    if-ne v2, v14, :cond_e

    iget-short v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    if-ne v1, v3, :cond_c

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    if-ne v1, v3, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v14, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v13

    const-string v0, "derivation-ok-restriction.5.4.1.2"

    invoke-direct {v1, v0, v2, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_c
    :goto_6
    :try_start_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq v0, v1, :cond_18

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    goto/16 :goto_b

    :cond_d
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    array-length v2, v0

    sub-int/2addr v2, v13

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2, v0, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :catch_0
    move-exception v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v0

    :cond_e
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v2

    iput-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    goto/16 :goto_a

    :cond_f
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    if-eqz v1, :cond_17

    iget-short v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    if-ne v1, v14, :cond_11

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    if-ne v1, v14, :cond_10

    goto :goto_7

    :cond_10
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "cos-ct-extends.1.4.3.2.2.1.a"

    invoke-direct {v0, v2, v1, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_11
    :goto_7
    iget-short v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    if-ne v1, v3, :cond_13

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    if-ne v1, v3, :cond_12

    goto :goto_8

    :cond_12
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "cos-ct-extends.1.4.3.2.2.1.b"

    invoke-direct {v0, v2, v1, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_13
    :goto_8
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/16 v2, 0x67

    if-ne v1, v3, :cond_14

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    if-eq v1, v2, :cond_15

    :cond_14
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-ne v1, v3, :cond_16

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    if-eq v1, v2, :cond_15

    goto :goto_9

    :cond_15
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "cos-all-limited.1.2"

    invoke-direct {v0, v2, v1, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_16
    :goto_9
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x66

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v14, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v2, v14, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v4, v2, v9

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v4, v2, v13

    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v1, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :cond_17
    :goto_a
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    :try_start_2
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_18
    :goto_b
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v0

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v1

    :cond_19
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v14, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v13

    const-string v0, "src-ct.1"

    invoke-direct {v1, v0, v2, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_1a
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v0

    :cond_1b
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v9

    const-string v0, "base"

    aput-object v0, v2, v13

    const-string v0, "s4s-att-must-appear"

    invoke-direct {v1, v0, v2, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_1c
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v3, v14, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v4, v3, v9

    aput-object v0, v3, v13

    const-string v0, "s4s-elt-invalid-content.1"

    invoke-direct {v2, v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_1d
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v14, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v2, v9

    aput-object v0, v2, v13

    const-string v0, "s4s-elt-invalid-content.1"

    invoke-direct {v1, v0, v2, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_1e
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v14, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v2, v9

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    aput-object v3, v2, v13

    const-string v3, "s4s-elt-invalid-content.2"

    invoke-direct {v1, v3, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1
.end method

.method private traverseComplexContentDecl(Lmf/org/w3c/dom/Element;Z)V
    .locals 0

    return-void
.end method

.method private traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    iput-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    iput-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v2, v0, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v3, v0, v3

    move-object v10, v3

    check-cast v10, Ljava/lang/Boolean;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v3, v0, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-object/from16 v4, p2

    iput-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    iget-object v4, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-short v2, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v2

    :goto_0
    iput-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    if-nez v3, :cond_1

    iget-short v2, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v2

    :goto_1
    iput-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iget-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    and-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    iput-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    iget-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    and-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    iput-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v11

    goto :goto_2

    :cond_2
    move v1, v12

    :goto_2
    iput-boolean v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    const/4 v1, 0x0

    iput-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    const/4 v14, 0x2

    if-eqz v13, :cond_6

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7, v13, v0, v12, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-direct {v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-direct {v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_4
    :goto_3
    if-eqz v13, :cond_7

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v1, "s4s-elt-invalid-content.1"

    new-array v2, v14, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v2, v12

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-direct {v0, v1, v2, v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_6
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-direct {v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_7
    :goto_4
    move-object v2, v13

    if-nez v2, :cond_8

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-short v14, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_5

    :cond_8
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v7, v2, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSimpleContent(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v3, "s4s-elt-invalid-content.1"

    new-array v4, v14, [Ljava/lang/Object;

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v5, v4, v12

    aput-object v1, v4, v11

    invoke-direct {v2, v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_a
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v7, v2, v0, v8, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexContent(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v3, "s4s-elt-invalid-content.1"

    new-array v4, v14, [Ljava/lang/Object;

    iget-object v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v5, v4, v12

    aput-object v1, v4, v11

    invoke-direct {v2, v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_c
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-short v14, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorSubstText:[Ljava/lang/Object;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorElem:Lmf/org/w3c/dom/Element;

    invoke-direct {v7, v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_5
    iget-object v13, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v14, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget-object v15, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-short v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    iget-short v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iget-short v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    iget-short v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iget-boolean v5, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iget-object v6, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v9, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    new-instance v10, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v11, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-nez v11, :cond_d

    goto :goto_6

    :cond_d
    array-length v12, v11

    :goto_6
    invoke-direct {v10, v11, v12}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    invoke-virtual/range {v13 .. v25}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v0
.end method

.method private traverseSimpleContent(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x1

    iput-short v12, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v0, 0x0

    iput-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v13, v11, v10, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v13}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v11

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_1
    move-object v2, v13

    :goto_0
    const/4 v13, 0x2

    if-eqz v2, :cond_24

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-short v13, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto :goto_1

    :cond_2
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iput-short v12, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    :goto_1
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    if-nez v3, :cond_22

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v3, v2, v10, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v14

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v3, v14, v3

    check-cast v3, Lmf/org/apache/xerces/xni/QName;

    if-eqz v3, :cond_21

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x7

    invoke-virtual {v1, v9, v4, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_20

    iput-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    const/4 v15, 0x3

    if-ne v3, v4, :cond_5

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v3

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v4

    if-ne v4, v12, :cond_3

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v16, v1

    move-object v6, v4

    goto :goto_2

    :cond_3
    iget-short v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-ne v4, v13, :cond_4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v4

    if-ne v4, v15, :cond_4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v6, v0

    move-object/from16 v16, v1

    goto :goto_2

    :cond_4
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v12

    const-string v1, "src-ct.2.1"

    invoke-direct {v0, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_5
    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-short v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-eq v3, v13, :cond_1f

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v3

    move-object/from16 v16, v0

    move-object v6, v1

    :goto_2
    iget-short v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-short v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-ne v0, v12, :cond_6

    const-string v0, "cos-ct-extends.1.1"

    goto :goto_3

    :cond_6
    const-string v0, "derivation-ok-restriction.1"

    :goto_3
    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v4, v3, v10

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-direct {v1, v0, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7, v5, v14, v10, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    move-object v0, v6

    goto :goto_5

    :cond_8
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v4, v14

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object v0, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_4

    :cond_9
    move-object/from16 v18, v5

    move-object v0, v6

    :goto_4
    move-object/from16 v5, v18

    :goto_5
    if-eqz v5, :cond_b

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v2, v1, v10

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v2, v1, v12

    const-string v2, "s4s-elt-invalid-content.1"

    invoke-direct {v0, v2, v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_b
    :goto_6
    move-object v2, v5

    goto :goto_7

    :cond_c
    move-object/from16 v18, v5

    move-object v0, v6

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v4, v14

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_d
    move-object/from16 v2, v18

    :goto_7
    iget-short v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-ne v1, v13, :cond_1a

    if-eqz v2, :cond_12

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    move-object/from16 v5, p3

    invoke-virtual {v1, v2, v9, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v6

    if-eqz v6, :cond_10

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v1

    invoke-static {v6, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v3, v15, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-interface {v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v13

    const-string v0, "derivation-ok-restriction.5.2.2.1"

    invoke-direct {v1, v0, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_f
    :goto_8
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto :goto_a

    :cond_10
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v0

    :cond_11
    move-object/from16 v5, p3

    goto :goto_9

    :cond_12
    move-object/from16 v5, p3

    :goto_9
    move-object v6, v0

    :goto_a
    if-eqz v6, :cond_19

    if-eqz v2, :cond_13

    invoke-virtual {v7, v2, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    move-object v15, v1

    goto :goto_b

    :cond_13
    move v0, v10

    move v4, v0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_b
    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v10, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v13, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    move-object/from16 v19, v13

    move-object/from16 v21, v6

    invoke-virtual/range {v17 .. v22}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v10

    iput-object v10, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-object v10, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v13, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v10, v13}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v13, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v10, v3, v4, v0, v13}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v3, v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    iget-object v2, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v6

    invoke-virtual/range {v17 .. v22}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    iput-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_c
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    instance-of v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v1, :cond_14

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    :cond_14
    if-eqz v15, :cond_17

    invoke-direct {v7, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v6, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_d

    :cond_15
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    const-string v3, "s4s-elt-invalid-content.1"

    invoke-direct {v1, v3, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_16
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v15}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v2, "s4s-elt-invalid-content.1"

    invoke-direct {v0, v2, v1, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_17
    :goto_d
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    goto/16 :goto_f

    :cond_18
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    array-length v2, v0

    sub-int/2addr v2, v12

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2, v0, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :catch_1
    move-exception v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v0

    :cond_19
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v1, v12, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "src-ct.2.2"

    invoke-direct {v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_1a
    move-object/from16 v5, p3

    iput-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz v2, :cond_1d

    invoke-direct {v7, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v6, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    goto :goto_e

    :cond_1b
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    const-string v3, "s4s-elt-invalid-content.1"

    invoke-direct {v1, v3, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_1c
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v12

    const-string v3, "s4s-elt-invalid-content.1"

    invoke-direct {v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_1d
    :goto_e
    if-eqz v16, :cond_1e

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v0

    :cond_1e
    :goto_f
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_1f
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v12

    const-string v1, "src-ct.2.1"

    invoke-direct {v0, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_20
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v0

    :cond_21
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "base"

    aput-object v1, v3, v12

    const-string v1, "s4s-att-must-appear"

    invoke-direct {v0, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_22
    move v4, v13

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    aput-object v0, v2, v12

    const-string v0, "s4s-elt-invalid-content.1"

    invoke-direct {v1, v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_23
    move v5, v10

    move v4, v13

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v1, v3, v12

    const-string v1, "s4s-elt-invalid-content.1"

    invoke-direct {v0, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_24
    move v5, v10

    move v4, v13

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    aput-object v2, v1, v12

    const-string v2, "s4s-elt-invalid-content.2"

    invoke-direct {v0, v2, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0
.end method

.method private traverseSimpleContentDecl(Lmf/org/w3c/dom/Element;)V
    .locals 0

    return-void
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    if-nez v8, :cond_0

    const-string p3, "s4s-att-must-appear"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p3, v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p3, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p3, v2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    instance-of p1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz p1, :cond_3

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, v1

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v2
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v1
.end method
