import 'package:ankiishopii/blocs/account_bloc/event.dart';
import 'package:ankiishopii/blocs/account_bloc/service.dart';
import 'package:ankiishopii/blocs/account_bloc/state.dart';
import 'package:ankiishopii/models/account_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(AccountState initialState) : super(initialState);

  @override
  Stream<AccountState> mapEventToState(AccountEvent event) async* {
    // TODO: implement mapEventToState
    if (event is GetLocalAccount) {
      yield* mapLoginEventToState(event);
    }
  }

  Stream<AccountState> mapLoginEventToState(GetLocalAccount event) async* {
    // var rs = await AccountService().getAccountFromLocal();
    var rs = AccountModel(
      fullname: "sfnjf",
      address: "jsfnlg",
      phoneNumber: "j j",
      username: "oyaks",
      password: "1234",
      image:
          "https://www.google.com/search?q=random+images&rlz=1C1GCEA_enNG898NG898&sxsrf=AOaemvL8dC1-3Nfjx3skQRF9VNaKiM2ZDg:1638466302399&tbm=isch&source=iu&ictx=1&fir=w_2Xay2IzNC0zM%252CYpYw_trHdY78IM%252C_%253BEpwlzJ8ekN85kM%252CYpYw_trHdY78IM%252C_%253BhbXVK53csZJ90M%252CSTZl94xPDziutM%252C_%253BNjZ5AWAzvGaSYM%252C94O_wgEocuU6jM%252C_%253BMU5EOEn2O0sGyM%252C0CP6VaHvjswEVM%252C_%253BjsbCYSW7o-fL-M%252CeLpSyvMoM8brnM%252C_%253BjGWaK-bTO1jKxM%252CRaG63Wpx0MhExM%252C_%253BashA-nYuhh7bAM%252CpcXeznEzpcKu-M%252C_%253BIiKJwWdeLzHijM%252Cvl7ZLWDBhk6A_M%252C_%253B1F867b4hQ-YSdM%252CAVughqqyBk8MIM%252C_%253Bc02aFTBLgoNakM%252CYpYw_trHdY78IM%252C_%253BqtGeJM2WMobK5M%252CIZBbzIreuAhJiM%252C_%253BW2kMXBhRAmRMAM%252CYpYw_trHdY78IM%252C_%253BwdRVVmBqS9e-PM%252C-XiGbQpAlsTikM%252C_%253BJ6Jy5HizbvtCDM%252CcamSdgilO-3RlM%252C_&vet=1&usg=AI4_-kTBWLJ0O3eCcB-dtvWKndN8TDM3jg&sa=X&ved=2ahUKEwjw7bjP0sX0AhUGLBoKHQnwBxUQ9QF6BAgHEAE#imgrc=EpwlzJ8ekN85kM",
    );
    if (rs != null) {
      yield AccountLoaded(rs);
    } else {
      yield AccountLoadingFailed();
    }
  }
}
