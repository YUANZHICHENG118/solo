// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow, so we distribute
        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);
    }
}

// File: @openzeppelin/contracts/math/SafeMath.sol



pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

// File: contracts/interfaces/mdex/IMDexRouter.sol



pragma solidity >=0.5.0;


interface IMDexRouter {

    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);


    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);

}

// File: contracts/interfaces/yearn/IVault.sol



pragma solidity =0.6.12;

interface IVault {

    function stake(uint) external;

    function exit() external;

    function withdraw(uint) external;

    function getPricePerFullShare() external view returns (uint);

    function underlying() external view returns (address);

    function strategy() external view returns (address);

    function setStrategy(address) external;

}

// File: contracts/interfaces/yearn/IStrategy.sol



pragma solidity =0.6.12;


interface IStrategy {

    function underlying() external view returns (address);

    function underlyingBalance() external view returns (uint);

    function vault() external view returns (address);

    function invest() external;

    function harvest() external;

    function withdrawToVault(uint) external;

    function withdrawAllToVault() external;

    function salvageToken(address) external returns (uint balance);

    function rewardToken() external view returns (address token);

}

// File: contracts/interfaces/IMasterChef.sol



pragma solidity =0.6.12;

interface IMasterChef {
    function deposit(uint256 _pid, uint256 _amount) external;
    function withdraw(uint256 _pid, uint256 _amount) external;
    function pending(uint256 _pid, address _user) external view returns (uint256);
    function userInfo(uint256 _pid, address _user) external view returns (uint256 amount, uint256 rewardDebt);
    function poolInfo(uint256 _pid) external view returns (address lpToken, uint256, uint256, uint256);
    function emergencyWithdraw(uint256 pid) external;
}

// File: contracts/interfaces/mdex/IMdexPair.sol



pragma solidity >=0.5.0 <0.8.0;

interface IMdexPair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);

    function symbol() external pure returns (string memory);

    function decimals() external pure returns (uint8);

    function totalSupply() external view returns (uint);

    function balanceOf(address owner) external view returns (uint);

    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);

    function transfer(address to, uint value) external returns (bool);

    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function PERMIT_TYPEHASH() external pure returns (bytes32);

    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);

    function factory() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);

    function price0CumulativeLast() external view returns (uint);

    function price1CumulativeLast() external view returns (uint);

    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);

    function burn(address to) external returns (uint amount0, uint amount1);

    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;

    function skim(address to) external;

    function sync() external;

    function price(address token, uint256 baseDecimal) external view returns (uint256);

    function initialize(address, address) external;
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol



pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// File: contracts/interfaces/yearn/IController.sol



pragma solidity =0.6.12;

interface IController {

    function underlying(address) external view returns (address);

    function feeManager() external view returns (address);

    function check(address _target) external view returns (bool);
}

// File: contracts/interfaces/mdex/ISwapMining.sol



pragma solidity =0.6.12;

interface ISwapMining {
    function takerWithdraw() external;
}

// File: @openzeppelin/contracts/utils/Context.sol



pragma solidity >=0.6.0 <0.8.0;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

// File: @openzeppelin/contracts/access/Ownable.sol



pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

// File: contracts/Operatable.sol


pragma solidity =0.6.12;


// seperate owner and operator, operator is for daily devops, only owner can update operator
contract Operatable is Ownable {
    address public operator;

    event SetOperator(address indexed oldOperator, address indexed newOperator);

    constructor() public {
        operator = msg.sender;
        emit SetOperator(address(0), operator);
    }

    modifier onlyOperator() {
        require(msg.sender == operator, "not operator");
        _;
    }

    function setOperator(address newOperator) public onlyOwner {
        require(newOperator != address(0), "bad new operator");
        address oldOperator = operator;
        operator = newOperator;
        emit SetOperator(oldOperator, newOperator);
    }
}

// File: contracts/lib/TransferHelper.sol


pragma solidity =0.6.12;

library TransferHelper {
    function safeApprove(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: APPROVE_FAILED');
    }

    function safeTransfer(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FAILED');
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FROM_FAILED');
    }
}

// File: contracts/strategies/ProfitNotifier.sol


pragma solidity =0.6.12;


abstract contract ProfitNotifier is Operatable, IStrategy {
    using SafeMath for uint;

    uint256 public constant  MAX_FEE = 100;

    uint256 public profitSharingFee;
    address public controller;
    address public routerToken;
    address public swapRouter;
    address public swapMining;
    address public override rewardToken;

    address internal  _underlying;
    address internal _vault;

    event ProfitLog(
        uint256 oldBalance,
        uint256 newBalance,
        uint256 feeAmount,
        uint256 timestamp
    );


    constructor(
        address _pvault,
        address _controller,
        address _want,
        address _pswapRouter

    ) Operatable() public {
        _vault = _pvault;
        controller = _controller;
        _underlying = _want;
        swapRouter = _pswapRouter;

        // persist in the state for immutability of the fee
        profitSharingFee = 20;
    }


    modifier restricted() {
        require(msg.sender == _vault || msg.sender == address(controller),
            "The sender has to be the controller or vault");
        _;
    }
    
     modifier operationWithManagerVaultAndController() {
         require(msg.sender == _vault || msg.sender == address(controller) || msg.sender == operator,
             "The sender has to be the controller or vault");
         _;
     }

    modifier vaultControllerAndGeneralUser() {
        require(IController(controller).check(msg.sender) || msg.sender == vault() || msg.sender == controller,
            "address is ban");
        _;
    }

    function setRouterAddress(address _address) onlyOperator external {
        swapRouter = _address;
    }

    function setSwapMining(address _address) onlyOperator external {
        swapMining = _address;
    }

    function setRouterToken(address _address) onlyOperator external {
        routerToken = _address;
    }

    function withdrawSwapMining() external {
        ISwapMining(swapMining).takerWithdraw();
    }

    function notifyProfit(uint256 oldBalance, uint256 newBalance) internal {
        if (newBalance > oldBalance) {
            uint256 profit = newBalance.sub(oldBalance);
            uint256 feeAmount = profit.mul(profitSharingFee).div(MAX_FEE);
            emit ProfitLog(oldBalance, newBalance, feeAmount, block.timestamp);
            TransferHelper.safeTransfer(rewardToken, IController(controller).feeManager(), feeAmount);
        } else {
            emit ProfitLog(oldBalance, newBalance, 0, block.timestamp);
        }
    }

    function salvageToken(address _asset) external override returns (uint balance) {
        require(msg.sender == controller, "not operator");
        require(_underlying != _asset, "want");
        balance = IERC20(_asset).balanceOf(address(this));
        TransferHelper.safeTransfer(_asset, controller, balance);
    }

    function setPerformanceFee(uint _performanceFee) onlyOperator external {
        require(_performanceFee <= 35, "fee < 35");
        profitSharingFee = _performanceFee;
    }

    function setController(address payable _controller) onlyOperator external {
        controller = _controller;
    }

    function underlying() public override view returns (address){
        return _underlying;
    }

    function vault() public override view returns (address){
        return _vault;
    }

}

// File: contracts/strategies/AbstractLPStrategy.sol


pragma solidity =0.6.12;









abstract contract AbstractLPStrategy is ProfitNotifier {
    using SafeMath for uint;

    mapping(address => address[]) public mdexRoutes;

    constructor(
        address _vault,
        address _controller,
        address _underlying,
        address _rewardToken,
        address _swapRouter
    ) ProfitNotifier(_vault, _controller, _underlying, _swapRouter) public {
        rewardToken = _rewardToken;
    }

    function setLiquidation(
        address [] memory _routeToToken0, address [] memory _routeToToken1
    ) public onlyOperator {
        address lpToken0 = IMdexPair(underlying()).token0();
        address lpToken1 = IMdexPair(underlying()).token1();
        mdexRoutes[lpToken0] = _routeToToken0;
        mdexRoutes[lpToken1] = _routeToToken1;
    }


    function _liquidateReward() internal {
        uint256 _liquidateBal = IERC20(rewardToken).balanceOf(address(this));       
        if (_liquidateBal > 0) {
            notifyProfit(0, _liquidateBal);
        }
        uint256 rewardBalance = IERC20(rewardToken).balanceOf(address(this));
        TransferHelper.safeTransfer(rewardToken, vault(), rewardBalance);
    }
}

// File: contracts/strategies/MdexBoardroomLPStrategy.sol


pragma solidity =0.6.12;


contract MdexBoardroomLPStrategy is AbstractLPStrategy {
    using SafeMath for uint;

    address public rewardPool;
    uint public poolID;

    constructor(
        address _vault,
        address _controller,
        address _underlying,
        address _rewardPool,
        uint256 _poolID,
        address _rewardToken,
        address _swapRouter
    ) AbstractLPStrategy(_vault, _controller, _underlying, _rewardToken, _swapRouter) public {
        address _lpt;
        rewardPool = _rewardPool;
        rewardToken = _rewardToken;
        (_lpt,,,) = IMasterChef(rewardPool).poolInfo(_poolID);
        require(_lpt == underlying(), "Pool Info does not match underlying");

        poolID = _poolID;
    }

    function balanceOfPool() public view returns (uint256 bal) {
        (bal,) = IMasterChef(rewardPool).userInfo(poolId(), address(this));
    }

    function exitRewardPool() internal {
        uint256 bal = balanceOfPool();
        if (bal != 0) {
            IMasterChef(rewardPool).withdraw(poolId(), bal);
        }
    }

    function enterRewardPool() internal {
        uint256 entireBalance = IERC20(underlying()).balanceOf(address(this));
        TransferHelper.safeApprove(underlying(), rewardPool, 0);
        TransferHelper.safeApprove(underlying(), rewardPool, entireBalance);
        IMasterChef(rewardPool).deposit(poolId(), entireBalance);
    }

    function emergencyWithdraw(uint _amount) public onlyOperator {
        if (_amount != 0) {
            IMasterChef(rewardPool).emergencyWithdraw(poolId());
        }
    }

    function invest() public vaultControllerAndGeneralUser override {
        // this check is needed, because most of the SNX reward pools will revert if
        // you try to stake(0).
        if (IERC20(underlying()).balanceOf(address(this)) > 0) {
            enterRewardPool();
        }
    }

    function withdrawAllToVault() public override restricted {
        if (rewardPool != address(0)) {
            exitRewardPool();
        }
        _liquidateReward();
        TransferHelper.safeTransfer(underlying(), vault(), IERC20(underlying()).balanceOf(address(this)));
    }

    function withdrawToVault(uint256 amount) public override restricted {
        // Typically there wouldn't be any amount here
        // however, it is possible because of the emergencyExit
        uint256 entireBalance = IERC20(underlying()).balanceOf(address(this));

        if (amount > entireBalance) {
            // While we have the check above, we still using SafeMath below
            // for the peace of mind (in case something gets changed in between)
            uint256 needToWithdraw = amount.sub(entireBalance);
            uint256 toWithdraw = Math.min(balanceOfPool(), needToWithdraw);
            IMasterChef(rewardPool).withdraw(poolId(), toWithdraw);
        }
        
        TransferHelper.safeTransfer(underlying(), vault(), amount);
    }

    /*
    *   Note that we currently do not have a mechanism here to include the
    *   amount of reward that is accrued.
    */
    function underlyingBalance() external override view returns (uint256) {
        if (rewardPool == address(0)) {
            return IERC20(underlying()).balanceOf(address(this));
        }
        // Adding the amount locked in the reward pool and the amount that is somehow in this contract
        // both are in the units of "underlying"
        // The second part is needed because there is the emergency exit mechanism
        // which would break the assumption that all the funds are always inside of the reward pool
        return balanceOfPool().add(IERC20(underlying()).balanceOf(address(this)));
    }

    function harvest() external override vaultControllerAndGeneralUser {
        getPoolReward();
        _liquidateReward();
        invest();
    }

    // deposit 0 can claim all pending amount
    function getPoolReward() internal {
        IMasterChef(rewardPool).deposit(poolId(), 0);
    }

    function poolId() public view returns (uint256) {
        return poolID;
    }

}