.class public Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "CMUniOp.java"


# instance fields
.field private final fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ImplementationMessages.VAL_UST"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method final getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method public isNullable()Z
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
