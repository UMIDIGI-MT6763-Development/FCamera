.class abstract Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
.super Lmf/javax/xml/validation/Schema;
.source "AbstractXMLSchema.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;


# instance fields
.field private final fFeatures:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/javax/xml/validation/Schema;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getFeature(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public final newValidator()Lmf/javax/xml/validation/Validator;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    return-object v0
.end method

.method public final newValidatorHandler()Lmf/javax/xml/validation/ValidatorHandler;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    return-object v0
.end method

.method final setFeature(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
