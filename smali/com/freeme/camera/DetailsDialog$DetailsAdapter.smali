.class Lcom/freeme/camera/DetailsDialog$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsDialog.java"

# interfaces
.implements Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/DetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailsAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDecimalFormat:Ljava/text/DecimalFormat;

.field private final mDefaultLocale:Ljava/util/Locale;

.field private mHeightIndex:I

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoctionIndex:I

.field private final mMediaDetails:Lcom/freeme/camera/data/MediaDetails;

.field private mWidthIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freeme/camera/data/MediaDetails;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    iput v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    iput v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mLoctionIndex:I

    iput-object p1, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mMediaDetails:Lcom/freeme/camera/data/MediaDetails;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/freeme/camera/data/MediaDetails;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->setDetails(Landroid/content/Context;Lcom/freeme/camera/data/MediaDetails;)V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/DetailsDialog$DetailsAdapter;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mLoctionIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/DetailsDialog$DetailsAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setDetails(Landroid/content/Context;Lcom/freeme/camera/data/MediaDetails;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/freeme/camera/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v5

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    const-string v8, ""

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0xa

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eq v9, v10, :cond_8

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_7

    const v10, 0x7f0f01b6

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v9, "%s\'s value is Null"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v1, v13}, Lcom/freeme/camera/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-static {v9, v10}, Lcom/freeme/camera/DetailsDialog;->access$000(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v0, v8}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v8, v13

    if-gez v10, :cond_1

    iget-object v10, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v15, "%d/%d"

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v8, v18, v8

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v16

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v13, v4

    invoke-static {v10, v15, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_1
    double-to-int v10, v8

    int-to-double v13, v10

    sub-double/2addr v8, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'\'"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide v13, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v13, v8, v13

    if-lez v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v14, " %d/%d"

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v8, v18, v8

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v16

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v15, v4

    invoke-static {v10, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_2
    move-object v8, v10

    goto/16 :goto_1

    :pswitch_2
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "F/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v8, v9}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->toLocalNumber(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_3
    const-string v8, "1"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f0f00f7

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_3
    const v8, 0x7f0f0057

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_4
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->toLocalNumber(D)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/freeme/camera/data/MediaDetails$FlashState;

    invoke-virtual {v8}, Lcom/freeme/camera/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f0f00c5

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_4
    const v8, 0x7f0f00c4

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    iget-object v8, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move v5, v12

    goto/16 :goto_1

    :cond_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_8
    iget-object v8, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move v5, v12

    goto :goto_1

    :cond_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Lcom/freeme/camera/data/MediaDetails;->getLatlng()[D

    move-result-object v9

    check-cast v9, [D

    iget-object v10, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mLoctionIndex:I

    instance-of v10, v1, Lcom/freeme/camera/GalleryActivity;

    if-eqz v10, :cond_9

    move-object v8, v1

    check-cast v8, Lcom/freeme/camera/GalleryActivity;

    invoke-static {v8, v9, v0}, Lcom/freeme/camera/DetailsDialog;->resolveAddress(Lcom/freeme/camera/GalleryActivity;[DLcom/freeme/camera/DetailsDialog$DetailsAdapter;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    :cond_9
    :goto_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/freeme/camera/data/MediaDetails;->hasUnit(I)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "%s: %s %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/freeme/camera/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    aput-object v8, v10, v4

    invoke-virtual {v2, v7}, Lcom/freeme/camera/data/MediaDetails;->getUnit(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_a
    const-string v9, "%s: %s"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/freeme/camera/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v12

    aput-object v8, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    iget-object v8, v0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    if-nez v5, :cond_c

    invoke-virtual {v0, v6}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->resolveResolution(Ljava/lang/String;)V

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toLocalInteger(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->toLocalNumber(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private toLocalNumber(D)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toLocalNumber(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mMediaDetails:Lcom/freeme/camera/data/MediaDetails;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b002e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    check-cast p2, Landroid/widget/TextView;

    :goto_0
    iget-object p3, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mLoctionIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onResolutionAvailable(II)V
    .locals 7

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v1, "%s: %d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/freeme/camera/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mDefaultLocale:Ljava/util/Locale;

    const-string v1, "%s: %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x6

    invoke-static {v3, v6}, Lcom/freeme/camera/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mWidthIndex:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->mHeightIndex:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public resolveResolution(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;->onResolutionAvailable(II)V

    return-void
.end method
