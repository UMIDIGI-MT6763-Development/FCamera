.class public Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.super Ljava/lang/Object;
.source "XMLResourceIdentifierImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLResourceIdentifier;


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fExpandedSystemId:Ljava/lang/String;

.field protected fLiteralSystemId:Ljava/lang/String;

.field protected fNamespace:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    return-void
.end method

.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public setExpandedSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    return-void
.end method

.method public setLiteralSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    iput-object p5, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fBaseSystemId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->fNamespace:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
