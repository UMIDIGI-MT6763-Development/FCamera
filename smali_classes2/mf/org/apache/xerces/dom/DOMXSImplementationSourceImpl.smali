.class public Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;
.super Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;
.source "DOMXSImplementationSourceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;
    .locals 2

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lmf/org/w3c/dom/DOMImplementationList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_2

    invoke-static {}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;

    invoke-direct {p1, v0}, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_2
    invoke-interface {v1, v2}, Lmf/org/w3c/dom/DOMImplementationList;->item(I)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
