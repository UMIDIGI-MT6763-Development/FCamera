.class public Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;
.super Ljava/lang/Object;
.source "SimpleContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# static fields
.field public static final CHOICE:S = -0x1s

.field public static final SEQUENCE:S = -0x1s


# instance fields
.field private final fFirstChild:Lmf/org/apache/xerces/xni/QName;

.field private final fOperator:I

.field private final fSecondChild:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    if-eqz p3, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p2, p3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/QName;->clear()V

    :goto_0
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fOperator:I

    return-void
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fOperator:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ImplementationMessages.VAL_CST"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    aget-object p3, p1, p2

    iget-object p3, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p3, v0, :cond_0

    return v1

    :cond_0
    add-int/2addr p2, v2

    aget-object p1, p1, p2

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object p2, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p2, :cond_d

    return v2

    :cond_1
    if-le p3, v0, :cond_2

    return v0

    :cond_2
    return p3

    :pswitch_1
    if-nez p3, :cond_3

    return v1

    :cond_3
    aget-object v0, p1, p2

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v3, :cond_4

    aget-object p1, p1, p2

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object p2, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p2, :cond_4

    return v1

    :cond_4
    if-le p3, v2, :cond_d

    return v2

    :pswitch_2
    if-nez p3, :cond_5

    return v1

    :cond_5
    :goto_0
    if-lt v1, p3, :cond_6

    goto :goto_2

    :cond_6
    add-int v0, p2, v1

    aget-object v0, p1, v0

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_3
    if-lez p3, :cond_d

    :goto_1
    if-lt v1, p3, :cond_8

    goto :goto_2

    :cond_8
    add-int v0, p2, v1

    aget-object v0, p1, v0

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v2, :cond_9

    return v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_4
    if-ne p3, v2, :cond_a

    aget-object p1, p1, p2

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object p2, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p2, :cond_a

    return v1

    :cond_a
    if-le p3, v2, :cond_d

    return v2

    :pswitch_5
    if-nez p3, :cond_b

    return v1

    :cond_b
    aget-object p1, p1, p2

    iget-object p1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object p2, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p2, :cond_c

    return v1

    :cond_c
    if-le p3, v2, :cond_d

    return v2

    :cond_d
    :goto_2
    const/4 p1, -0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
