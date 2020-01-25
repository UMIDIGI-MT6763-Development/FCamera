.class Lcom/freeme/camera/feature/mode/iko/IKOModeHelper$ImageFileName;
.super Ljava/lang/Object;
.source "IKOModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFileName"
.end annotation


# instance fields
.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOModeHelper$ImageFileName;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOModeHelper$ImageFileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public generateTitle(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOModeHelper$ImageFileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
