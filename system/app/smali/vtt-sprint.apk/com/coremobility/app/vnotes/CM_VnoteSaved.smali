.class public final Lcom/coremobility/app/vnotes/CM_VnoteSaved;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/coremobility/integration/app/k;
.implements Lcom/coremobility/integration/b/e;
.implements Lcom/coremobility/integration/i/e;
.implements Lcom/coremobility/integration/i/g;
.implements Lcom/coremobility/integration/i/h;
.implements Lcom/coremobility/k/dg;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static j:Lcom/coremobility/app/vnotes/CM_VnoteSaved;


# instance fields
.field private F:Landroid/widget/Button;

.field private G:[Landroid/widget/RelativeLayout;

.field private H:[Landroid/widget/TextView;

.field private I:[Landroid/widget/ImageView;

.field private J:Z

.field private K:I

.field private L:I

.field private M:Lcom/coremobility/app/vnotes/be;

.field private N:Lcom/coremobility/app/vnotes/im;

.field private O:I

.field private P:I

.field private Q:Landroid/database/Cursor;

.field private volatile R:Landroid/os/Handler;

.field private S:Ljava/lang/String;

.field private T:Lcom/coremobility/app/vnotes/bi;

.field private U:Landroid/widget/TextView;

.field d:Landroid/widget/ListView;

.field e:Z

.field f:Z

.field g:Lcom/coremobility/app/vnotes/il;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "recipient_mdns"

    aput-object v1, v0, v4

    const-string v1, "recv_timestamp"

    aput-object v1, v0, v6

    const-string v1, "out_timestamp"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "sender_mdn"

    aput-object v2, v0, v1

    const-string v1, "sender_email"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "sender_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "previous_sender"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "recipient_emails"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "txt_summary"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "record_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "file_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "filename_only"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "file_order"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "transcribe_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mime_guid"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dir_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->b:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "duration"

    aput-object v1, v0, v3

    const-string v1, "record_id"

    aput-object v1, v0, v4

    const-string v1, "file_type"

    aput-object v1, v0, v6

    const-string v1, "filename_only"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const-string v1, "file_order"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "transcribe_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_guid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->c:[Ljava/lang/String;

    sput v3, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->h:I

    sput v5, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i:I

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->j:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->L:I

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->O:I

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->P:I

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    new-instance v0, Lcom/coremobility/app/vnotes/ia;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ia;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->R:Landroid/os/Handler;

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->S:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->e:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->L:I

    return v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSaved;I)I
    .registers 2

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->O:I

    return p1
.end method

.method public static a()Lcom/coremobility/app/vnotes/CM_VnoteSaved;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->j:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    return-object v0
.end method

.method private a(II)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->R:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->R:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(IZ)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_4
    :sswitch_4
    return-void

    :cond_5
    new-instance v0, Lcom/coremobility/app/vnotes/ka;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/ka;-><init>()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    invoke-virtual {v2, p1, v3, v0, p0}, Lcom/coremobility/app/vnotes/da;->a(ILandroid/database/Cursor;Lcom/coremobility/app/vnotes/ka;Landroid/content/Context;)Z

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->a()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {p0, v2, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;ILcom/coremobility/app/vnotes/ka;)V

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_4

    if-nez p2, :cond_28

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/ka;)Z

    move-result p2

    :cond_28
    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->a()J

    move-result-wide v3

    long-to-int v3, v3

    array-length v4, v2

    move v0, v1

    :goto_2f
    if-ge v0, v4, :cond_64

    aget v5, v2, v0

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->k(I)Z

    move-result v5

    if-eqz v5, :cond_61

    aget v0, v2, v0

    :goto_3b
    sparse-switch v0, :sswitch_data_66

    goto :goto_4

    :sswitch_3f
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "vnoteid"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "autoplay"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "vnotedir"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "use_filter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_64
    move v0, v1

    goto :goto_3b

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_3f
        0xb -> :sswitch_3f
        0xc -> :sswitch_3f
        0x12 -> :sswitch_3f
        0x14 -> :sswitch_3f
        0x15 -> :sswitch_3f
        0x16 -> :sswitch_3f
    .end sparse-switch
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteSaved;I)I
    .registers 2

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->P:I

    return p1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V
    .registers 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i()V

    return-void
.end method

.method private f()V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->d:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->U:Landroid/widget/TextView;

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->b()Z

    move-result v0

    if-nez v0, :cond_af

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->U:Landroid/widget/TextView;

    const v1, 0x7f0c0211

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->h()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->F:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->F:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFocusable(Z)V

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_ec

    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i:I

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->G:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->H:[Landroid/widget/TextView;

    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->I:[Landroid/widget/ImageView;

    move v1, v6

    :goto_77
    sget v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i:I

    if-ge v1, v0, :cond_ec

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->G:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0087

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->H:[Landroid/widget/TextView;

    const v0, 0x7f0b0089

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->I:[Landroid/widget/ImageView;

    const v0, 0x7f0b0088

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_77

    :cond_af
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->U:Landroid/widget/TextView;

    const v1, 0x7f0c0210

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v7

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/k;->x:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a:[Ljava/lang/String;

    const-string v3, "dir_id=5 AND is_deleted=0"

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    invoke-virtual {v7, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/coremobility/app/vnotes/im;

    const v1, 0x7f03002d

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v6}, Lcom/coremobility/app/vnotes/im;-><init>(Landroid/content/Context;ILcom/coremobility/app/vnotes/da;Z)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_35

    :cond_ec
    return-void
.end method

.method private g()V
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->b()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1d
    iput-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    :cond_1f
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/k;->B:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->b:[Ljava/lang/String;

    const-string v3, "dir_id=5 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/im;->a(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/im;->b()V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/im;->c()V

    :goto_4c
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->T:Lcom/coremobility/app/vnotes/bi;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->h()V

    goto :goto_7

    :cond_55
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method private h()V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v0

    :goto_a
    sget-boolean v1, Lcom/coremobility/a/a;->f:Z

    if-eqz v1, :cond_26

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->b()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->U:Landroid/widget/TextView;

    const v2, 0x7f0c0211

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1e
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->U:Landroid/widget/TextView;

    if-nez v0, :cond_36

    const/4 v0, 0x0

    :goto_23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_26
    return-void

    :cond_27
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_a

    :cond_2d
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->U:Landroid/widget/TextView;

    const v2, 0x7f0c0210

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1e

    :cond_36
    const/4 v0, 0x4

    goto :goto_23
.end method

.method private i()V
    .registers 8

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v6

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/k;->x:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a:[Ljava/lang/String;

    const-string v3, "dir_id=5 AND is_deleted=0"

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    invoke-virtual {v6, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-nez v0, :cond_3c

    new-instance v0, Lcom/coremobility/app/vnotes/im;

    const v1, 0x7f03002d

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coremobility/app/vnotes/im;-><init>(Landroid/content/Context;ILcom/coremobility/app/vnotes/da;Z)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g()V

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->notifyDataSetChanged()V

    goto :goto_38
.end method

.method private j()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->R:Landroid/os/Handler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->R:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->R:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_12
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/a;->b()V

    :cond_19
    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/integration/i/l;I)V
    .registers 3

    return-void
.end method

.method public final a(IJJLjava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_60

    :cond_5
    :goto_5
    move v0, v1

    :goto_6
    return v0

    :sswitch_7
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->h()V

    goto :goto_5

    :sswitch_f
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i()V

    goto :goto_6

    :sswitch_13
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i()V

    move v0, v1

    goto :goto_6

    :sswitch_18
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->removeDialog(I)V

    check-cast p6, Lcom/coremobility/integration/h/c;

    iget v1, p6, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v1, :cond_35

    iget v1, p6, Lcom/coremobility/integration/h/c;->a:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2f

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    goto :goto_6

    :cond_2f
    const/16 v1, 0x81

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    goto :goto_6

    :cond_35
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x96

    if-lt v1, v2, :cond_43

    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    :cond_43
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i()V

    const v1, 0x7f0c00cf

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c00d0

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_58
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->h()V

    goto :goto_6

    nop

    :sswitch_data_60
    .sparse-switch
        0x75 -> :sswitch_f
        0x76 -> :sswitch_13
        0x7e -> :sswitch_7
        0x89 -> :sswitch_58
        0x8b -> :sswitch_18
    .end sparse-switch
.end method

.method public final b()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final c()V
    .registers 6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->P:I

    if-ge v0, v2, :cond_21

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->O:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->Q:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/coremobility/app/vnotes/da;->a(ILandroid/database/Cursor;Lcom/coremobility/app/vnotes/ka;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->O:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->P:I

    invoke-direct {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a(II)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->notifyDataSetChanged()V

    :cond_21
    return-void

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public final d()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_16
    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    :cond_1b
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->i()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->T:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->T:Lcom/coremobility/app/vnotes/bi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    :cond_28
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/da;->b()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->h()V

    return-void
.end method

.method public final h(I)V
    .registers 2

    return-void
.end method

.method public final i(I)V
    .registers 2

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v1, 0x5

    const/4 v3, 0x6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/coremobility/integration/app/CM_ListForm;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->e()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    if-ne p1, v1, :cond_52

    if-nez p2, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrade Canceled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->J:Z

    if-eqz v0, :cond_4f

    const-string v0, "Mandatory"

    :goto_3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->P()I

    goto :goto_24

    :cond_4f
    const-string v0, "Optional"

    goto :goto_3a

    :cond_52
    if-ne p1, v3, :cond_5d

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.VMSSETUPDONE"

    invoke-static {v0, v2, v2}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    goto :goto_24

    :cond_5d
    const/4 v0, 0x7

    if-ne p1, v0, :cond_69

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.VTTSURVEYDONE"

    invoke-static {v0, v2, v2}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    goto :goto_24

    :cond_69
    const/16 v0, 0x9

    if-ne p1, v0, :cond_24

    const/4 v0, 0x2

    if-ne p2, v0, :cond_24

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    goto :goto_24
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->F:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->T:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->T:Lcom/coremobility/app/vnotes/bi;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->b(I)V

    :cond_e
    return-void
.end method

.method public final onContentChanged()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onContentChanged()V

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_a} :catch_15

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_be

    :pswitch_13
    move v1, v2

    :cond_14
    :goto_14
    return v1

    :catch_15
    move-exception v0

    const/4 v0, 0x6

    const-string v1, "bad menuInfo"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_14

    :pswitch_20
    const/4 v0, -0x1

    if-eq v3, v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/im;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_bb

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x10

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_4e

    move v0, v1

    :goto_43
    long-to-int v2, v4

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->L:I

    if-eqz v0, :cond_50

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    goto :goto_14

    :cond_4e
    move v0, v2

    goto :goto_43

    :cond_50
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    goto :goto_14

    :pswitch_56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v5, :cond_5d

    move v2, v1

    :cond_5d
    invoke-direct {p0, v3, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a(IZ)V

    goto :goto_14

    :pswitch_61
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/im;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v2, v3}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_14

    :pswitch_76
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/im;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;ZLandroid/app/Activity;)Z

    goto :goto_14

    :pswitch_86
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/im;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_14

    :pswitch_97
    invoke-static {p0, v4}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v2, 0x96

    if-lt v0, v2, :cond_a6

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    goto/16 :goto_14

    :cond_a6
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2, v5, v0, v4}, Lcom/coremobility/app/vnotes/cf;->a(III)V

    goto/16 :goto_14

    :cond_bb
    move v0, v2

    goto :goto_43

    nop

    :pswitch_data_be
    .packed-switch 0x5
        :pswitch_56
        :pswitch_86
        :pswitch_13
        :pswitch_13
        :pswitch_61
        :pswitch_76
        :pswitch_56
        :pswitch_13
        :pswitch_20
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_97
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 7

    const v4, 0x1869f

    sput-object p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->j:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->f()Z

    move-result v0

    if-nez v0, :cond_8e

    const-string v0, "com.coremobility.app.vnotes.START_NOW"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :goto_16
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->A()V

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->setDefaultKeyMode(I)V

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->setContentView(I)V

    new-instance v0, Lcom/coremobility/app/vnotes/be;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/be;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->M:Lcom/coremobility/app/vnotes/be;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->K:I

    const-string v0, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    sget-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v2, :cond_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ne v1, v4, :cond_92

    const-string v0, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    :cond_4c
    :goto_4c
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->S:Ljava/lang/String;

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_inbox_filter"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->K:I

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_6d
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->f()V

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/bi;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v0, v2}, Lcom/coremobility/app/vnotes/bi;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->T:Lcom/coremobility/app/vnotes/bi;

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_8e
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->i()V

    goto :goto_16

    :cond_92
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(IZ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(recipient_mdns LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 20

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_8
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v0, p3

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v10, v1}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v10

    long-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v11, v1}, Lcom/coremobility/app/vnotes/im;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v8, 0x1

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->c(Ljava/lang/String;)Z

    move-result v2

    :cond_34
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v7, 0x1

    :cond_3b
    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v1

    if-eqz v1, :cond_43

    const/4 v9, 0x1

    :cond_43
    if-eqz v3, :cond_5a

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v12, "preference_send_fail_addr"

    const-string v13, "sendfailure@"

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "unknown@"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_101

    const/4 v5, 0x1

    :cond_5a
    :goto_5a
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-static {v0, v10, v1}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/content/Context;II)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_7b

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-nez v1, :cond_7b

    const/4 v6, 0x1

    :cond_7b
    if-eqz v7, :cond_8e

    const-string v1, "+1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_8a
    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_8e
    if-eqz v5, :cond_10a

    const v1, 0x7f0c000d

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;
    :try_end_98
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_98} :catch_122

    move v15, v2

    move-object v2, v3

    move v3, v15

    :goto_9b
    if-eqz v6, :cond_142

    const/4 v6, 0x0

    const/16 v10, 0xb

    const/4 v11, 0x0

    const/4 v1, 0x1

    const v12, 0x7f0c0030

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_aa
    if-eqz v8, :cond_150

    if-nez v5, :cond_150

    if-nez v4, :cond_150

    if-nez v3, :cond_150

    const/4 v6, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x1

    const/4 v1, 0x2

    const v12, 0x7f0c0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v10, v11, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_cf
    :goto_cf
    const/4 v6, 0x0

    const/16 v10, 0xd

    add-int/lit8 v2, v1, 0x1

    const v11, 0x7f0c002a

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v10, v1, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    if-nez v9, :cond_184

    if-nez v5, :cond_184

    if-nez v4, :cond_184

    if-nez v3, :cond_184

    if-nez v8, :cond_e8

    if-eqz v7, :cond_184

    :cond_e8
    const/4 v3, 0x0

    const/16 v4, 0x9

    add-int/lit8 v1, v2, 0x1

    const v5, 0x7f0c0032

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v2, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_f5
    const/4 v2, 0x0

    const/16 v3, 0x14

    const v4, 0x7f0c00ce

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v1, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :cond_101
    :try_start_101
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v4, 0x1

    goto/16 :goto_5a

    :cond_10a
    if-eqz v4, :cond_118

    const v1, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    move v15, v2

    move-object v2, v3

    move v3, v15

    goto :goto_9b

    :cond_118
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    :try_end_11d
    .catch Ljava/lang/ClassCastException; {:try_start_101 .. :try_end_11d} :catch_122

    move v15, v2

    move-object v2, v3

    move v3, v15

    goto/16 :goto_9b

    :catch_122
    move-exception v1

    const/4 v10, 0x6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad menuInfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v1, v11}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v15, v2

    move-object v2, v3

    move v3, v15

    goto/16 :goto_9b

    :cond_142
    const/4 v6, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v1, 0x1

    const v12, 0x7f0c0024

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_aa

    :cond_150
    if-eqz v7, :cond_cf

    if-nez v5, :cond_cf

    const/4 v6, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v1, 0x2

    new-instance v12, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f0c0023

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_cf

    :cond_184
    move v1, v2

    goto/16 :goto_f5
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    const v5, 0x7f0c003d

    const v4, 0x7f0c00f3

    const v2, 0x7f0c00f2

    const v1, 0x1080027

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_1fc

    :pswitch_10
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->M:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p0, p1, v1}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1a
    return-object v0

    :pswitch_1b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c023c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1a

    :pswitch_3b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0240

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1a

    :pswitch_5b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0247

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1a

    :pswitch_77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d2

    new-instance v2, Lcom/coremobility/app/vnotes/id;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/id;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_a4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005c

    new-instance v2, Lcom/coremobility/app/vnotes/ie;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/ie;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_ca
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005c

    new-instance v2, Lcom/coremobility/app/vnotes/if;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/if;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_f0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005c

    new-instance v2, Lcom/coremobility/app/vnotes/ig;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/ig;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_11a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d001a

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005c

    new-instance v2, Lcom/coremobility/app/vnotes/ih;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/ih;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0041

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/ik;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ik;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00df

    new-instance v2, Lcom/coremobility/app/vnotes/ij;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/ij;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0061

    new-instance v2, Lcom/coremobility/app/vnotes/ii;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/ii;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_18b
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0219

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v1, Lcom/coremobility/app/vnotes/ib;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ib;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const v1, 0x7f0c021b

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/coremobility/app/vnotes/ic;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ic;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSaved;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1a

    :pswitch_1ba
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    :pswitch_1da
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1a

    nop

    :pswitch_data_1fc
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_10
        :pswitch_10
        :pswitch_3b
        :pswitch_1b
        :pswitch_a4
        :pswitch_10
        :pswitch_f0
        :pswitch_11a
        :pswitch_10
        :pswitch_ca
        :pswitch_77
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_149
        :pswitch_18b
        :pswitch_1ba
        :pswitch_1da
    .end packed-switch
.end method

.method protected final onDestroy()V
    .registers 3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->isFinishing()Z

    move-result v0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    if-eqz v0, :cond_3a

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->j()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->E()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_28
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_37
    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->j:Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    :cond_3a
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g:Lcom/coremobility/app/vnotes/il;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g:Lcom/coremobility/app/vnotes/il;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g:Lcom/coremobility/app/vnotes/il;

    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/il;

    iget-object v1, v0, Lcom/coremobility/app/vnotes/il;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_31
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g:Lcom/coremobility/app/vnotes/il;

    return-void

    :cond_34
    iget-object v1, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_31
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    :cond_11
    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/app/CM_ListForm;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v0

    if-ltz p3, :cond_e

    if-ge p3, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a(IZ)V

    :cond_e
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g:Lcom/coremobility/app/vnotes/il;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g:Lcom/coremobility/app/vnotes/il;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g:Lcom/coremobility/app/vnotes/il;

    :cond_10
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const v3, 0x10a0001

    const/high16 v2, 0x10a

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_34

    :goto_c
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_11
    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->b(ZLandroid/app/Activity;)V

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->overridePendingTransition(II)V

    goto :goto_c

    :sswitch_1a
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->k(Landroid/app/Activity;)V

    goto :goto_c

    :sswitch_1e
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_2d

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    goto :goto_c

    :cond_2d
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->i(Landroid/app/Activity;)V

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->overridePendingTransition(II)V

    goto :goto_c

    :sswitch_data_34
    .sparse-switch
        0x3 -> :sswitch_11
        0x8 -> :sswitch_1a
        0x15 -> :sswitch_1e
    .end sparse-switch
.end method

.method protected final onPause()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->f:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->j()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->M:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/app/vnotes/be;->a(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_1e

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    :goto_e
    return-void

    :pswitch_f
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0d0004

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_e

    nop

    :pswitch_data_1e
    .packed-switch 0x18
        :pswitch_f
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v0

    if-lez v0, :cond_31

    const/16 v0, 0x15

    const v1, 0x7f0c00ce

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f0c0028

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020070

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_31
    const/16 v0, 0x8

    const v1, 0x7f0c002f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method protected final onRestart()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onRestart()V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "sel_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->S:Ljava/lang/String;

    const-string v0, "line_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->K:I

    return-void
.end method

.method protected final onResume()V
    .registers 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->g()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->notifyDataSetChanged()V

    :cond_f
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "sel_key"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->S:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "line_type"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->K:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    invoke-direct {p0, p2, p3}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a(II)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method

.method public final onSearchRequested()Z
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v0

    if-gtz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onSearchRequested()Z

    move-result v0

    goto :goto_d
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected final onStart()V
    .registers 2

    const/16 v0, 0x71

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_ListForm;->b(I)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/e;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/h;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/integration/i/g;)V

    return-void
.end method

.method protected final onStop()V
    .registers 2

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->e()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/e;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/h;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/integration/i/g;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->N:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->c()V

    :cond_24
    return-void
.end method
