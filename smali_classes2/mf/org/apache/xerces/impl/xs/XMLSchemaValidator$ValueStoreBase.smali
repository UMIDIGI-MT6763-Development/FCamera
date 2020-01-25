.class public abstract Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/identity/ValueStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ValueStoreBase"
.end annotation


# instance fields
.field protected fFieldCount:I

.field protected fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

.field protected fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

.field private fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

.field public fItemValueTypes:Ljava/util/Vector;

.field private fItemValueTypesLength:I

.field protected fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

.field protected fLocalValueTypes:[S

.field protected fLocalValues:[Ljava/lang/Object;

.field final fTempBuffer:Ljava/lang/StringBuffer;

.field private fUseItemValueTypeVector:Z

.field private fUseValueTypeVector:Z

.field private fValueType:S

.field public fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

.field private fValueTypesLength:I

.field public final fValues:Ljava/util/Vector;

.field protected fValuesCount:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 2

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result p2

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    iget p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v0, p2, [Lmf/org/apache/xerces/impl/xs/identity/Field;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    new-array v0, p2, [S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    new-array p2, p2, [Lmf/org/apache/xerces/xs/ShortList;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    :goto_0
    iget p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldAt(I)Lmf/org/apache/xerces/impl/xs/identity/Field;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private addItemValueType(Lmf/org/apache/xerces/xs/ShortList;)V
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-nez v0, :cond_1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Vector;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    :cond_3
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private addValueType(S)V
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-nez v0, :cond_1

    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    goto :goto_1

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-eq v0, p1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-nez v1, :cond_2

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    :cond_2
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/xs/ShortList;

    return-object p1

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    return-object p1
.end method

.method private getValueTypeAt(I)S
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->valueAt(I)S

    move-result p1

    return p1

    :cond_0
    iget-short p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    return p1
.end method

.method private itemValueTypeContains(Lmf/org/apache/xerces/xs/ShortList;)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private valueTypeContains(S)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->contains(S)Z

    move-result p1

    return p1

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addValue(Lmf/org/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 6

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, -0x1

    if-gt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_5

    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    const-string p2, "UnknownField"

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    aput-object p3, v0, v1

    aput-object p4, v0, v3

    invoke-virtual {p5, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p2, "FieldMultipleMatch"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v2, v3, v1

    invoke-virtual {v5, p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    :goto_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short p4, p1, v0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aput-object p5, p1, v0

    iget p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->checkDuplicateValues()V

    :goto_3
    iget p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v4, p1, :cond_3

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object p2, p2, v4

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short p1, p1, v4

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->addValueType(S)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aget-object p1, p1, v4

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->addItemValueType(Lmf/org/apache/xerces/xs/ShortList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method public append(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected checkDuplicateValues()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->clear()V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_1
    return-void
.end method

.method public contains(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/16 v5, 0x2b

    const/16 v6, 0x2c

    const/4 v7, 0x1

    if-gt v4, v7, :cond_5

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {v1, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v4

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->valueTypeContains(S)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-direct {v1, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v4

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->itemValueTypeContains(Lmf/org/apache/xerces/xs/ShortList;)Z

    move-result v4

    if-nez v4, :cond_3

    return v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v8

    :cond_5
    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v3, :cond_6

    :goto_3
    const/4 v1, -0x1

    return v1

    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-lt v9, v4, :cond_7

    return v7

    :cond_7
    const/4 v10, 0x0

    :goto_5
    iget v11, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v10, v11, :cond_8

    add-int/2addr v7, v11

    goto :goto_2

    :cond_8
    add-int v11, v7, v10

    invoke-virtual {v2, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    add-int v14, v9, v10

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v1, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v15

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v8

    if-eq v12, v13, :cond_9

    if-ne v15, v8, :cond_c

    if-eqz v12, :cond_c

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    if-eq v15, v6, :cond_a

    if-ne v15, v5, :cond_b

    :cond_a
    invoke-direct {v1, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v8

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v11

    if-eqz v8, :cond_c

    if-eqz v11, :cond_c

    invoke-interface {v8, v11}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    iget v8, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v9, v8

    goto :goto_4
.end method

.method public contains()Z
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v3, v2

    move v4, v2

    move v2, v1

    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v2, v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v5, v5, v2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v7, v7, v2

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v8

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    if-ne v7, v8, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v5, 0x2c

    if-eq v7, v5, :cond_3

    const/16 v5, 0x2b

    if-ne v7, v5, :cond_4

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aget-object v5, v5, v2

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v6

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v2, v3

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endDocumentFragment()V
    .locals 0

    return-void
.end method

.method public endValueScope()V
    .locals 7

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "AbsentKeyValue"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v5, v2, v3

    invoke-virtual {v6, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "KeyNotEnoughValues"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-object v5, v4

    check-cast v5, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v5, v2, v3

    invoke-virtual {v6, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startValueScope()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    move v1, v0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short v0, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/util/Vector;II)Ljava/lang/String;
    .locals 3

    if-nez p3, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-lez v1, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-lez v2, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
