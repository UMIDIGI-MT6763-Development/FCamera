.class public Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
.super Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;
.source "ResolvingXMLReader.java"


# static fields
.field public static namespaceAware:Z = true

.field public static validating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;-><init>()V

    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    sget-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->validating:Z

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    :try_start_0
    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object p1

    sget-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    invoke-virtual {p1, v0}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    sget-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->validating:Z

    invoke-virtual {p1, v0}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    :try_start_0
    invoke-virtual {p1}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object p1

    invoke-virtual {p1}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
