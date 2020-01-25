.class public Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
.super Ljava/lang/Object;
.source "NamedNodeMapImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NamedNodeMap;
.implements Ljava/io/Serializable;


# static fields
.field protected static final CHANGED:S = 0x2s

.field protected static final HASDEFAULTS:S = 0x4s

.field protected static final READONLY:S = 0x1s

.field static final serialVersionUID:J = -0x61b069b6b67df684L


# instance fields
.field protected flags:S

.field protected nodes:Ljava/util/List;

.field protected ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    throw p1
.end method


# virtual methods
.method protected addItem(Lmf/org/w3c/dom/Node;)I
    .locals 3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    rsub-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return v0
.end method

.method final changed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 p1, p1, -0x3

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    return-void
.end method

.method final changed()Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 4

    iget-object v0, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified()Z

    move-result v2

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method protected cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    return-object v0
.end method

.method protected findNamePoint(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le p2, v0, :cond_0

    if-le p2, v1, :cond_3

    move v1, p2

    goto :goto_1

    :cond_0
    add-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    if-gez v2, :cond_2

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    rsub-int/lit8 p1, v1, -0x1

    return p1
.end method

.method protected findNamePoint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_4

    if-nez v4, :cond_5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Node;

    :goto_0
    return-object p1
.end method

.method protected getNamedItemIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Node;

    :goto_0
    return-object p1
.end method

.method getReadOnly()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method final hasDefaults(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 p1, p1, -0x5

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    return-void
.end method

.method final hasDefaults()Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isReadOnly(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    and-int/lit8 p1, p1, -0x2

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    return-void
.end method

.method final isReadOnly()Z
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Node;

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-ne v3, p2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected removeItem(I)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NOT_FOUND_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p2

    :cond_0
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "NOT_FOUND_ERR"

    invoke-static {p1, p2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p1, p2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2
.end method

.method public setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "WRONG_DOCUMENT_ERR"

    invoke-static {p1, v0, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p1, v0, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    rsub-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    return-object v2
.end method

.method public setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "WRONG_DOCUMENT_ERR"

    invoke-static {p1, v0, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p1, v0, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    rsub-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    return-object v2
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method setReadOnly(ZZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly(Z)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
