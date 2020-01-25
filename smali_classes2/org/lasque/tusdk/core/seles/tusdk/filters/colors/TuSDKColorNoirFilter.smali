.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorNoirFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-sc3"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorNoirFilter;->disableSecondFrameCheck()V

    return-void
.end method
