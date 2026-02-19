import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PasswordRecoveryCodeScreen extends StatefulWidget {
  const PasswordRecoveryCodeScreen({super.key});

  @override
  State<PasswordRecoveryCodeScreen> createState() => _PasswordRecoveryCodeScreenState();
}

class _PasswordRecoveryCodeScreenState extends State<PasswordRecoveryCodeScreen> {
  int _attemptCount = 0;
  final int _maxAttempts = 3;
  final String _correctPin = "1234"; // Logic: Move to a secure backend in production

  /// Logic to handle the PIN validation
  void _handlePinSubmission(String pin) {
    if (pin == _correctPin) {
      _navigateToResetPassword();
    } else {
      _handleFailedAttempt();
    }
  }

  /// Navigation logic for success
  void _navigateToResetPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SetupNewPasswordScreen()),
    );
  }

  /// State management for failed attempts
  void _handleFailedAttempt() {
    setState(() => _attemptCount++);

    if (_attemptCount >= _maxAttempts) {
      _showErrorDialog();
    } else {
      _showRetrySnackBar();
    }
  }

  /// UI Feedback: SnackBar
  void _showRetrySnackBar() {
    final remaining = _maxAttempts - _attemptCount;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Wrong code. $remaining ${remaining == 1 ? 'attempt' : 'attempts'} left."),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// UI Feedback: Lockout Dialog
  void _showErrorDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("Too Many Attempts"),
        content: const Text(
          "You have entered the wrong code 3 times. "
              "Please try again later or request a new code.",
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() => _attemptCount = 0); // Resetting for demo
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Verify Code")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Pinput(
            length: 4,
            onCompleted: _handlePinSubmission,
            // Add your Pinput theme/decoration here
          ),
        ),
      ),
    );
  }
}

// Dummy screen for navigation reference
class SetupNewPasswordScreen extends StatelessWidget {
  const SetupNewPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text("New Password")));
}