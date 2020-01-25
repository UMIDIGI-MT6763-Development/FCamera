.class public final Lcom/freeme/camera/common/debug/LogUtil$Tag;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/debug/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation


# static fields
.field private static final MAX_TAG_LEN:I = 0x11

.field private static final MAX_TAG_LEN_DEFINED_FRAMEWORK:I = 0x17


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CamAp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/debug/LogUtil$Tag;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/debug/LogUtil$Tag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public truncateTag()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/debug/LogUtil$Tag;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/freeme/camera/common/debug/LogUtil$Tag;->MAX_TAG_LEN:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/debug/LogUtil$Tag;->mValue:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/debug/LogUtil$Tag;->mValue:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/freeme/camera/common/debug/LogUtil$Tag;->mValue:Ljava/lang/String;

    return-void
.end method
