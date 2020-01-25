.class public Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;
.super Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;
.source "ExtendedSchemaDVFactoryImpl.java"


# static fields
.field static fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->createBuiltInTypes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;-><init>()V

    return-void
.end method

.method static createBuiltInTypes()V
    .locals 14

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v1, "anyAtomicType"

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v11, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v12, "yearMonthDuration"

    new-instance v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "yearMonthDuration"

    const/16 v4, 0x1b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x2e

    move-object v1, v13

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v11, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v12, "dayTimeDuration"

    new-instance v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "dayTimeDuration"

    const/16 v4, 0x1c

    const/16 v10, 0x2f

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object p1
.end method

.method public getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    return-object v0
.end method
