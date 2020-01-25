.class public Lcom/mediatek/accessor/operator/MetaOperatorFactory;
.super Ljava/lang/Object;
.source "MetaOperatorFactory.java"


# static fields
.field public static final CUSTOMIZED_META_OPERATOR:I = 0x1

.field public static final XMP_META_OPERATOR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/mediatek/accessor/operator/IMetaOperator;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;

    invoke-direct {p0, p2}, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;-><init>(Ljava/util/Map;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;

    invoke-direct {p0, p1}, Lcom/mediatek/accessor/operator/XmpMetaOperator;-><init>([B)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
