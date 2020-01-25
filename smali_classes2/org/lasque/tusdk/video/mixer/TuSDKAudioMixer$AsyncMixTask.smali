.class Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncMixTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Double;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->cancel(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isDone()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$RawAudioTrack;

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$AsyncMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->onMixComplete()V

    return-void
.end method
