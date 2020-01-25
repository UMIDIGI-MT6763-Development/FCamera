.class public Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.source "PSVIDOMImplementationImpl.java"


# static fields
.field static final singleton:Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "psvi"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
