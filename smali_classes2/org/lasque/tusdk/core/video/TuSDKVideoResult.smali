.class public Lorg/lasque/tusdk/core/video/TuSDKVideoResult;
.super Ljava/lang/Object;


# instance fields
.field public duration:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public videoInfo:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

.field public videoPath:Ljava/io/File;

.field public videoSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
