.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;
.super Ljava/lang/Object;
.source "XSDAbstractParticleTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParticleArray"
.end annotation


# instance fields
.field fContextCount:I

.field fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field fPos:[I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    return-void
.end method


# virtual methods
.method addParticle(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v2, v0, v1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    array-length v4, v3

    if-ne v2, v4, :cond_0

    aget v2, v0, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v3, v1, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, v1, v2

    aput-object p1, v0, v3

    return-void
.end method

.method getParticleCount()I
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method popContext()[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v2, v0, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-array v4, v2, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v5, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    return-object v3
.end method

.method pushContext()V
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    aput v2, v0, v1

    return-void
.end method
